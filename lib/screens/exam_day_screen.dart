import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import '../data/all_questions.dart';
import '../models/question.dart';
import '../services/analytics.dart';
import '../services/exam_modes.dart';
import '../services/storage_service.dart';
import '../theme/app_theme.dart';
import 'question_actions.dart';
import 'question_widgets.dart';

final _questionsById = {for (final q in allQuestions) q.id: q};

/// Prüfungstag: eine vergangene Prüfung unter Prüfungsbedingungen. Countdown, freie Navigation,
/// Antworten bleiben bis zum Abgeben änderbar, richtig/falsch gibt es erst in der Auswertung.
class ExamDayScreen extends StatefulWidget {
  final QuizState state;
  final Future<void> Function(QuizState) onPersist;
  final VoidCallback onGoHome;
  final VoidCallback onExamFinished;
  final ValueChanged<int> onToggleBookmark;

  const ExamDayScreen({
    super.key,
    required this.state,
    required this.onPersist,
    required this.onGoHome,
    required this.onExamFinished,
    required this.onToggleBookmark,
  });

  @override
  State<ExamDayScreen> createState() => _ExamDayScreenState();
}

class _ExamDayScreenState extends State<ExamDayScreen> {
  static const _autosaveEverySeconds = 30;
  static const _navItemExtent = 40.0;

  final _scrollController = ScrollController();
  final _navController = ScrollController();
  Timer? _timer;
  late int _elapsed;
  bool _finishing = false;

  /// Neuester Stand. widget.state hinkt nach onPersist bis zum nächsten Build hinterher –
  /// ohne diese Kopie könnte das Autospeichern eine gerade gegebene Antwort überschreiben.
  late QuizState _latest;

  ExamState get _exam => _latest.currentExam!;
  int get _limit => _exam.timeLimitSeconds ?? examDaySeconds;
  int get _remaining => max(0, _limit - _elapsed);
  Question _questionOf(ExamState exam) => _questionsById[exam.questionIds[exam.currentIndex]]!;

  @override
  void initState() {
    super.initState();
    _latest = widget.state;
    _elapsed = _exam.elapsedSeconds;
    if (_remaining == 0) {
      // Beim Fortsetzen war die Zeit bereits um.
      WidgetsBinding.instance.addPostFrameCallback((_) => _finish(timedOut: true));
      return;
    }
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _tick());
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollNavTo(_exam.currentIndex, animate: false));
  }

  @override
  void didUpdateWidget(ExamDayScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    _latest = widget.state;
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    _navController.dispose();
    super.dispose();
  }

  void _tick() {
    if (_finishing) return;
    setState(() => _elapsed++);
    if (_remaining == 0) {
      _finish(timedOut: true);
    } else if (_elapsed % _autosaveEverySeconds == 0) {
      _save(_exam);
    }
  }

  Future<void> _persist(QuizState state) {
    _latest = state;
    return widget.onPersist(state);
  }

  Future<void> _save(ExamState exam) => _persist(_latest.copyWith(currentExam: exam.copyWith(elapsedSeconds: _elapsed)));

  void _select(int optIdx) {
    final exam = _exam;
    final q = _questionOf(exam);
    final prev = exam.answers[q.id]?.selected ?? const <int>[];
    final List<int> selected;
    if (q.isMultiple) {
      selected = prev.contains(optIdx) ? (List.of(prev)..remove(optIdx)) : [...prev, optIdx];
    } else {
      selected = [optIdx];
    }
    selected.sort();
    final answers = Map<int, AnswerRecord>.from(exam.answers);
    if (selected.isEmpty) {
      answers.remove(q.id);
    } else {
      answers[q.id] = AnswerRecord(selected: selected, correct: isAnswerCorrect(q, selected));
    }
    _save(exam.copyWith(answers: answers));
  }

  void _goTo(int index) {
    if (index < 0 || index >= _exam.questionIds.length || index == _exam.currentIndex) return;
    _save(_exam.copyWith(currentIndex: index));
    if (_scrollController.hasClients) _scrollController.jumpTo(0);
    _scrollNavTo(index);
  }

  void _scrollNavTo(int index, {bool animate = true}) {
    if (!_navController.hasClients) return;
    final position = _navController.position;
    final target = (index * _navItemExtent - position.viewportDimension / 2 + _navItemExtent / 2)
        .clamp(0.0, position.maxScrollExtent);
    if (animate) {
      _navController.animateTo(target, duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
    } else {
      _navController.jumpTo(target);
    }
  }

  Future<void> _confirmSubmit() async {
    final unanswered = _exam.questionIds.length - _exam.answers.length;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppColors.bgMid,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
        title: const Text('Prüfung abgeben?', style: TextStyle(color: AppColors.textPrimary)),
        content: Text(
          unanswered > 0
              ? 'Noch $unanswered ${unanswered == 1 ? 'Frage ist' : 'Fragen sind'} unbeantwortet. Unbeantwortete Fragen zählen als falsch.'
              : 'Alle Fragen sind beantwortet. Nach dem Abgeben siehst du deine Auswertung.',
          style: const TextStyle(color: AppColors.textSecondary),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: const Text('Weiter bearbeiten', style: TextStyle(color: AppColors.textMuted)),
          ),
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: const Text('Abgeben', style: TextStyle(color: AppColors.tealLighter)),
          ),
        ],
      ),
    );
    if (confirmed == true) await _finish();
  }

  Future<void> _finish({bool timedOut = false}) async {
    if (_finishing) return;
    _finishing = true;
    _timer?.cancel();
    final state = _latest;
    final exam = state.currentExam!;
    final stats = Map<int, QuestionStats>.from(state.questionStats);
    var score = 0;
    for (final id in exam.questionIds) {
      final answer = exam.answers[id];
      // Unbeantwortet zählt als falsch, verändert aber die Lernstatistik der Frage nicht.
      if (answer == null) continue;
      if (answer.correct) score++;
      stats[id] = (stats[id] ?? QuestionStats()).afterAnswer(answer.correct);
    }
    final elapsed = min(_elapsed, _limit);
    final record = ExamRecord(
      date: DateTime.now().toIso8601String(),
      score: score,
      total: exam.questionIds.length,
      elapsedSeconds: elapsed,
      questionIds: exam.questionIds,
      answers: exam.answers,
      mode: ExamMode.examDay,
      examLabel: exam.examLabel,
      timedOut: timedOut,
    );
    logEvent('exam_day_finished', {
      'exam': exam.examLabel ?? '',
      'score': score,
      'total': exam.questionIds.length,
      'duration_seconds': elapsed,
      'timed_out': timedOut.toString(),
    });
    await _persist(state.copyWith(
      questionStats: stats,
      clearCurrentExam: true,
      examHistory: [...state.examHistory, record],
    ));
    widget.onExamFinished();
  }

  Future<void> _leave() async {
    _timer?.cancel();
    await _save(_exam);
    widget.onGoHome();
  }

  String _format(int seconds) =>
      '${(seconds ~/ 60).toString().padLeft(2, '0')}:${(seconds % 60).toString().padLeft(2, '0')}';

  @override
  Widget build(BuildContext context) {
    final exam = _latest.currentExam;
    if (exam == null) return const SizedBox.shrink();
    final tt = Theme.of(context).textTheme;
    final q = _questionOf(exam);
    final bookmarks = _latest.bookmarks;
    final selected = exam.answers[q.id]?.selected ?? const <int>[];
    final total = exam.questionIds.length;
    final index = exam.currentIndex;
    final remaining = _remaining;
    final timerColor = remaining <= 120
        ? AppColors.red
        : remaining <= 600
            ? AppColors.amber
            : AppColors.textMuted;

    return Container(
      decoration: const BoxDecoration(gradient: AppColors.gradientBg),
      child: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.fromLTRB(AppSpacing.lg, AppSpacing.lg, AppSpacing.lg, AppSpacing.md),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: _leave,
                    child: Text('← Menü', style: tt.titleSmall!.copyWith(color: AppColors.tealLighter)),
                  ),
                  const Spacer(),
                  RepaintBoundary(
                    child: _Pill(
                      icon: Icons.timer_outlined,
                      color: timerColor,
                      text: _format(remaining),
                      semantics: 'Verbleibende Zeit ${remaining ~/ 60} Minuten',
                    ),
                  ),
                  const Spacer(),
                  _Pill(
                    icon: Icons.checklist_rounded,
                    color: AppColors.tealLighter,
                    text: '${exam.answers.length}/$total',
                    semantics: '${exam.answers.length} von $total beantwortet',
                  ),
                ],
              ),
            ),
            // Termin + Fragenübersicht
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: Row(
                children: [
                  Expanded(child: Text('PRÜFUNGSTAG · ${(exam.examLabel ?? '').toUpperCase()}', style: tt.labelSmall)),
                  Text('Frage ${index + 1}/$total', style: tt.bodySmall!.copyWith(fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            SizedBox(
              height: 36,
              child: ListView.builder(
                controller: _navController,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                itemExtent: _navItemExtent,
                itemCount: total,
                itemBuilder: (_, i) {
                  final id = exam.questionIds[i];
                  return _NavDot(
                    number: i + 1,
                    answered: exam.answers.containsKey(id),
                    current: i == index,
                    bookmarked: bookmarks.contains(id),
                    onTap: () => _goTo(i),
                  );
                },
              ),
            ),
            // Frage
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 720),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppSpacing.lg),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.cardBg,
                            borderRadius: BorderRadius.circular(AppSpacing.lg),
                            border: Border.all(color: AppColors.indigoBorder.withValues(alpha: 0.15)),
                            boxShadow: const [BoxShadow(color: Color(0x4D000000), blurRadius: 32, offset: Offset(0, 8))],
                          ),
                          padding: const EdgeInsets.all(AppSpacing.lg),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'FRAGE ${index + 1}${q.isMultiple ? ' · MEHRFACHAUSWAHL' : ''}',
                                      style: tt.labelSmall,
                                    ),
                                  ),
                                  QuestionActions(
                                    question: q,
                                    bookmarked: bookmarks.contains(q.id),
                                    onToggleBookmark: () => widget.onToggleBookmark(q.id),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSpacing.lg),
                              QuestionText(q.q),
                              const SizedBox(height: AppSpacing.lg),
                              ...List.generate(q.options.length, (idx) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                                  child: OptionButton(
                                    index: idx,
                                    text: q.options[idx],
                                    isMultiple: q.isMultiple,
                                    isSelected: selected.contains(idx),
                                    answered: false,
                                    isCorrectOption: false,
                                    showRadio: true,
                                    onTap: () => _select(idx),
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Navigation + Abgeben
            Padding(
              padding: const EdgeInsets.fromLTRB(AppSpacing.lg, AppSpacing.xs, AppSpacing.lg, AppSpacing.lg),
              child: Row(
                children: [
                  _NavButton(icon: Icons.chevron_left_rounded, tooltip: 'Vorherige Frage', onPressed: index > 0 ? () => _goTo(index - 1) : null),
                  const SizedBox(width: AppSpacing.lg),
                  Expanded(child: _SubmitButton(onTap: _confirmSubmit)),
                  const SizedBox(width: AppSpacing.lg),
                  _NavButton(
                    icon: Icons.chevron_right_rounded,
                    tooltip: 'Nächste Frage',
                    onPressed: index < total - 1 ? () => _goTo(index + 1) : null,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Pill extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final String semantics;

  const _Pill({required this.icon, required this.color, required this.text, required this.semantics});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Semantics(
      label: semantics,
      excludeSemantics: true,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.sm),
        decoration: BoxDecoration(
          color: AppColors.indigoSubtle,
          border: Border.all(color: AppColors.indigoBorder),
          borderRadius: BorderRadius.circular(AppSpacing.lg),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 16, color: color),
            const SizedBox(width: AppSpacing.sm),
            Text(text, style: tt.titleSmall!.copyWith(color: color, fontFeatures: const [FontFeature.tabularFigures()])),
          ],
        ),
      ),
    );
  }
}

class _NavDot extends StatelessWidget {
  final int number;
  final bool answered;
  final bool current;
  final bool bookmarked;
  final VoidCallback onTap;

  const _NavDot({required this.number, required this.answered, required this.current, required this.bookmarked, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: 'Frage $number${answered ? ', beantwortet' : ''}${bookmarked ? ', gemerkt' : ''}',
      excludeSemantics: true,
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 32,
                height: 32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: answered ? AppColors.teal : AppColors.surfaceDark,
                  border: Border.all(color: current ? AppColors.tealLighter : Colors.transparent, width: 2),
                ),
                child: Text(
                  '$number',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: answered ? Colors.white : AppColors.textDim,
                  ),
                ),
              ),
              if (bookmarked)
                Positioned(
                  right: -1,
                  top: -1,
                  child: Container(
                    width: 9,
                    height: 9,
                    decoration: BoxDecoration(
                      color: AppColors.amberLight,
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.bgDark, width: 1.5),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final VoidCallback? onPressed;

  const _NavButton({required this.icon, required this.tooltip, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final enabled = onPressed != null;
    return Container(
      decoration: BoxDecoration(
        color: enabled ? AppColors.surfaceDark : AppColors.surfaceDark.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(AppSpacing.lg),
      ),
      child: IconButton(
        tooltip: tooltip,
        onPressed: onPressed,
        icon: Icon(icon, color: enabled ? AppColors.textPrimary : AppColors.textDark, size: 28),
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  final VoidCallback onTap;

  const _SubmitButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.gradientIndigo,
        borderRadius: BorderRadius.circular(AppSpacing.lg),
        boxShadow: const [BoxShadow(color: AppColors.indigoBorder, blurRadius: 16, offset: Offset(0, 4))],
      ),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg + 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
        ),
        child: Text('Abgeben', style: tt.labelLarge),
      ),
    );
  }
}

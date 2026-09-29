import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import '../models/question.dart';
import '../data/all_questions.dart';
import '../services/storage_service.dart';
import '../theme/app_theme.dart';
import '../services/glossary_lookup.dart';
import 'glossary_terms_dialog.dart';
import 'question_actions.dart';
import 'question_widgets.dart';

class ExamScreen extends StatefulWidget {
  final QuizState state;
  final Future<void> Function(QuizState) onPersist;
  final VoidCallback onGoHome;
  final VoidCallback onExamFinished;
  final ValueChanged<int> onToggleBookmark;

  const ExamScreen({
    super.key,
    required this.state,
    required this.onPersist,
    required this.onGoHome,
    required this.onExamFinished,
    required this.onToggleBookmark,
  });

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  bool answered = false;
  List<int> selected = [];
  final _scrollController = ScrollController();
  DateTime _questionStartTime = DateTime.now();
  late int _elapsedSeconds;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _syncAnswerState();
    _questionStartTime = DateTime.now();
    _elapsedSeconds = widget.state.currentExam?.elapsedSeconds ?? 0;
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() => _elapsedSeconds++);
    });
  }

  String _formatTime(int totalSeconds) {
    final m = totalSeconds ~/ 60;
    final s = totalSeconds % 60;
    return '${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
  }

  Future<void> _saveElapsed() async {
    final exam = widget.state.currentExam;
    if (exam == null) return;
    await widget.onPersist(widget.state.copyWith(currentExam: exam.copyWith(elapsedSeconds: _elapsedSeconds)));
  }

  void _syncAnswerState() {
    final exam = widget.state.currentExam;
    if (exam == null) return;
    final qId = exam.questionIds[exam.currentIndex];
    final existingAnswer = exam.answers[qId];
    if (existingAnswer != null) {
      answered = true;
      selected = List<int>.from(existingAnswer.selected);
    } else {
      answered = false;
      selected = [];
    }
  }

  @override
  void didUpdateWidget(ExamScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    _syncAnswerState();
  }

  Question _getQuestion(int id) {
    return allQuestions.firstWhere((q) => q.id == id);
  }

  void _logAnswer(int questionId, bool isCorrect, String selected) {
    final duration = DateTime.now().difference(_questionStartTime).inSeconds;
    final params = {
      'question_id': questionId,
      'correct': isCorrect.toString(),
      'selected': selected,
      'duration_seconds': duration,
    };
    debugPrint('[Analytics] question_answered: $params');
    FirebaseAnalytics.instance.logEvent(name: 'question_answered', parameters: params);
  }

  Future<void> _handleAnswer(int optIdx) async {
    if (answered) return;
    final exam = widget.state.currentExam!;
    final qId = exam.questionIds[exam.currentIndex];
    final question = _getQuestion(qId);

    if (question.isMultiple) {
      setState(() {
        final arr = List<int>.from(selected);
        if (arr.contains(optIdx)) {
          arr.remove(optIdx);
        } else {
          arr.add(optIdx);
        }
        selected = arr;
      });
      return;
    }

    // Single choice — immediate evaluation
    final isCorrect = optIdx == question.correctIndex;
    final newStats = Map<int, QuestionStats>.from(widget.state.questionStats);
    newStats[qId] = (widget.state.questionStats[qId] ?? QuestionStats()).afterAnswer(isCorrect);
    final newAnswers = Map<int, AnswerRecord>.from(exam.answers);
    newAnswers[qId] = AnswerRecord(selected: [optIdx], correct: isCorrect);
    final newScore = exam.score + (isCorrect ? 1 : 0);

    final newState = widget.state.copyWith(
      questionStats: newStats,
      currentExam: exam.copyWith(answers: newAnswers, score: newScore, elapsedSeconds: _elapsedSeconds),
    );

    setState(() {
      selected = [optIdx];
      answered = true;
    });
    _logAnswer(qId, isCorrect, '${optIdx + 1}');
    await widget.onPersist(newState);
  }

  Future<void> _handleConfirmMultiple() async {
    if (answered) return;
    final exam = widget.state.currentExam!;
    final qId = exam.questionIds[exam.currentIndex];
    final question = _getQuestion(qId);
    final selectedArr = List<int>.from(selected)..sort();
    final correctArr = List<int>.from(question.correctIndices)..sort();
    final isCorrect =
        selectedArr.length == correctArr.length &&
        List.generate(selectedArr.length, (i) => selectedArr[i] == correctArr[i]).every((v) => v);

    final newStats = Map<int, QuestionStats>.from(widget.state.questionStats);
    newStats[qId] = (widget.state.questionStats[qId] ?? QuestionStats()).afterAnswer(isCorrect);
    final newAnswers = Map<int, AnswerRecord>.from(exam.answers);
    newAnswers[qId] = AnswerRecord(selected: selectedArr, correct: isCorrect);
    final newScore = exam.score + (isCorrect ? 1 : 0);

    final newState = widget.state.copyWith(
      questionStats: newStats,
      currentExam: exam.copyWith(answers: newAnswers, score: newScore, elapsedSeconds: _elapsedSeconds),
    );

    setState(() {
      answered = true;
    });
    _logAnswer(qId, isCorrect, selectedArr.map((i) => i + 1).join(','));
    await widget.onPersist(newState);
  }

  Future<void> _handleNext() async {
    final exam = widget.state.currentExam!;
    if (exam.currentIndex < exam.questionIds.length - 1) {
      final newState = widget.state.copyWith(
        currentExam: exam.copyWith(currentIndex: exam.currentIndex + 1, elapsedSeconds: _elapsedSeconds),
      );
      setState(() {
        answered = false;
        selected = [];
        _questionStartTime = DateTime.now();
      });
      await widget.onPersist(newState);
      _scrollController.animateTo(0, duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
    } else {
      // Exam finished
      _timer?.cancel();
      final newHistory = List<ExamRecord>.from(widget.state.examHistory)
        ..add(
          ExamRecord(
            date: DateTime.now().toIso8601String(),
            score: exam.score,
            total: exam.questionIds.length,
            elapsedSeconds: _elapsedSeconds,
            questionIds: exam.questionIds,
            answers: exam.answers,
            mode: exam.mode,
            examLabel: exam.examLabel,
          ),
        );
      await widget.onPersist(widget.state.copyWith(clearCurrentExam: true, examHistory: newHistory));
      widget.onExamFinished();
    }
  }

  @override
  Widget build(BuildContext context) {
    final exam = widget.state.currentExam;
    if (exam == null) return const SizedBox.shrink();

    final qId = exam.questionIds[exam.currentIndex];
    final question = _getQuestion(qId);
    final glossaryTerms = findGlossaryTerms('${question.q} ${question.options.join(' ')}');
    final isMultiple = question.isMultiple;
    final correctSet = question.correctIndices;
    final isCorrect =
        answered &&
        (() {
          final sa = List<int>.from(selected)..sort();
          final ca = List<int>.from(correctSet)..sort();
          return sa.length == ca.length && List.generate(sa.length, (i) => sa[i] == ca[i]).every((v) => v);
        })();
    final examProgress = exam.currentIndex + 1;
    final examTotal = exam.questionIds.length;
    final currentQInAnswers = exam.answers.containsKey(qId);
    final currentScore =
        exam.answers.values.where((a) => a.correct).length + (!currentQInAnswers && answered && isCorrect ? 1 : 0);
    final currentAnswered = exam.answers.length + (!currentQInAnswers && answered ? 1 : 0);
    final tt = Theme.of(context).textTheme;

    return Container(
      decoration: const BoxDecoration(gradient: AppColors.gradientBg),
      child: SafeArea(
        child: Column(
          children: [
            ExamHeader(
              onMenu: _handleGoHome,
              center: StatusPill(
                icon: Icons.timer_outlined,
                color: AppColors.textMuted,
                text: _formatTime(_elapsedSeconds),
                semantics: 'Bearbeitungszeit ${_elapsedSeconds ~/ 60} Minuten',
              ),
              trailing: StatusPill(
                icon: Icons.check_rounded,
                color: AppColors.tealLighter,
                text: '$currentScore/$currentAnswered',
                semantics: '$currentScore von $currentAnswered richtig',
              ),
            ),
            // Progress
            Padding(
              padding: const EdgeInsets.fromLTRB(AppSpacing.xl, AppSpacing.sm, AppSpacing.xl, AppSpacing.xs),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 6,
                      decoration: BoxDecoration(
                        color: AppColors.indigoSubtle,
                        borderRadius: BorderRadius.circular(AppSpacing.xs),
                      ),
                      child: FractionallySizedBox(
                        alignment: Alignment.centerLeft,
                        widthFactor: examProgress / examTotal,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: AppColors.gradientProgress,
                            borderRadius: BorderRadius.circular(AppSpacing.xs),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.lg),
                  Text('Frage $examProgress/$examTotal', style: tt.bodyMedium!.copyWith(color: AppColors.textMuted)),
                ],
              ),
            ),
            // Question Card
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                padding: const EdgeInsets.fromLTRB(AppSpacing.xl, AppSpacing.lg, AppSpacing.xl, AppSpacing.xl * 1.5),
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
                            boxShadow: const [
                              BoxShadow(color: Color(0x4D000000), blurRadius: 32, offset: Offset(0, 8)),
                            ],
                          ),
                          padding: const EdgeInsets.all(AppSpacing.xl),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Question number + bookmark, report, glossary
                              Row(
                                children: [
                                  Expanded(
                                    child: Text('FRAGE $examProgress', style: tt.labelSmall),
                                  ),
                                  TrailingActions(
                                    children: [
                                      QuestionActions(
                                        question: question,
                                        bookmarked: widget.state.bookmarks.contains(qId),
                                        onToggleBookmark: () => widget.onToggleBookmark(qId),
                                      ),
                                      if (glossaryTerms.isNotEmpty)
                                        GlossaryTermsButton(terms: glossaryTerms, title: 'Fachbegriffe in dieser Frage'),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSpacing.md),
                              // Question text
                              QuestionText(question.q),
                              const SizedBox(height: AppSpacing.xl),
                              if (isMultiple && !answered) ...[
                                const MultipleChoiceHint(),
                                const SizedBox(height: AppSpacing.md),
                              ],
                              // Options
                              ...List.generate(question.options.length, (idx) {
                                final isSelected = selected.contains(idx);
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: AppSpacing.md),
                                  child: OptionButton(
                                    index: idx,
                                    text: question.options[idx],
                                    isMultiple: isMultiple,
                                    isSelected: isSelected,
                                    answered: answered,
                                    isCorrectOption: correctSet.contains(idx),
                                    onTap: () => _handleAnswer(idx),
                                  ),
                                );
                              }),
                              // Confirm multiple choice
                              if (isMultiple && !answered)
                                Padding(
                                  padding: const EdgeInsets.only(top: AppSpacing.lg),
                                  child: _GradientButton(
                                    text: 'Antwort bestätigen (${selected.length} gewählt)',
                                    enabled: selected.isNotEmpty,
                                    onTap: _handleConfirmMultiple,
                                  ),
                                ),
                              // Feedback
                              if (answered) FeedbackBox(isCorrect: isCorrect, explanation: question.explanation),
                              // Next button
                              if (answered)
                                Padding(
                                  padding: const EdgeInsets.only(top: AppSpacing.lg),
                                  child: _GradientButton(
                                    text: exam.currentIndex < exam.questionIds.length - 1
                                        ? 'Nächste Frage →'
                                        : 'Ergebnis anzeigen',
                                    onTap: _handleNext,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleGoHome() async {
    _timer?.cancel();
    await _saveElapsed();
    widget.onGoHome();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }
}

class _GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool enabled;

  const _GradientButton({required this.text, required this.onTap, this.enabled = true});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          gradient: enabled ? AppColors.gradientIndigo : null,
          color: enabled ? null : AppColors.surfaceDark,
          borderRadius: BorderRadius.circular(AppSpacing.lg),
          boxShadow: enabled ? const [BoxShadow(color: AppColors.indigoBorder, blurRadius: 16, offset: Offset(0, 4))] : null,
        ),
        child: ElevatedButton(
          onPressed: enabled ? onTap : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            disabledBackgroundColor: Colors.transparent,
            minimumSize: const Size.fromHeight(52),
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl, vertical: AppSpacing.xl),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: tt.labelLarge!.copyWith(color: enabled ? null : AppColors.textMuted),
          ),
        ),
      ),
    );
  }
}

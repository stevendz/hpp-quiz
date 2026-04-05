import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import '../models/question.dart';
import '../data/all_questions.dart';
import '../services/storage_service.dart';
import '../theme/app_theme.dart';
import '../data/glossary_data.dart';

class ExamScreen extends StatefulWidget {
  final QuizState state;
  final Future<void> Function(QuizState) onPersist;
  final VoidCallback onGoHome;
  final VoidCallback onExamFinished;

  const ExamScreen({
    super.key,
    required this.state,
    required this.onPersist,
    required this.onGoHome,
    required this.onExamFinished,
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
    final newState = QuizState(
      questionStats: widget.state.questionStats,
      currentExam: ExamState(
        questionIds: exam.questionIds,
        currentIndex: exam.currentIndex,
        answers: exam.answers,
        score: exam.score,
        elapsedSeconds: _elapsedSeconds,
      ),
      examHistory: widget.state.examHistory,
      allAnswered: widget.state.allAnswered,
    );
    await widget.onPersist(newState);
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
    final prev = widget.state.questionStats[qId] ?? QuestionStats();
    final newStats = Map<int, QuestionStats>.from(widget.state.questionStats);
    newStats[qId] = QuestionStats(attempts: prev.attempts + 1, correctCount: prev.correctCount + (isCorrect ? 1 : 0));
    final newAnswers = Map<int, AnswerRecord>.from(exam.answers);
    newAnswers[qId] = AnswerRecord(selected: [optIdx], correct: isCorrect);
    final newScore = exam.score + (isCorrect ? 1 : 0);

    final newState = QuizState(
      questionStats: newStats,
      currentExam: ExamState(
        questionIds: exam.questionIds,
        currentIndex: exam.currentIndex,
        answers: newAnswers,
        score: newScore,
        elapsedSeconds: _elapsedSeconds,
      ),
      examHistory: widget.state.examHistory,
      allAnswered: widget.state.allAnswered,
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

    final prev = widget.state.questionStats[qId] ?? QuestionStats();
    final newStats = Map<int, QuestionStats>.from(widget.state.questionStats);
    newStats[qId] = QuestionStats(attempts: prev.attempts + 1, correctCount: prev.correctCount + (isCorrect ? 1 : 0));
    final newAnswers = Map<int, AnswerRecord>.from(exam.answers);
    newAnswers[qId] = AnswerRecord(selected: selectedArr, correct: isCorrect);
    final newScore = exam.score + (isCorrect ? 1 : 0);

    final newState = QuizState(
      questionStats: newStats,
      currentExam: ExamState(
        questionIds: exam.questionIds,
        currentIndex: exam.currentIndex,
        answers: newAnswers,
        score: newScore,
        elapsedSeconds: _elapsedSeconds,
      ),
      examHistory: widget.state.examHistory,
      allAnswered: widget.state.allAnswered,
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
      final newExam = ExamState(
        questionIds: exam.questionIds,
        currentIndex: exam.currentIndex + 1,
        answers: exam.answers,
        score: exam.score,
        elapsedSeconds: _elapsedSeconds,
      );
      final newState = QuizState(
        questionStats: widget.state.questionStats,
        currentExam: newExam,
        examHistory: widget.state.examHistory,
        allAnswered: widget.state.allAnswered,
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
        ..add(ExamRecord(date: DateTime.now().toIso8601String(), score: exam.score, total: exam.questionIds.length, elapsedSeconds: _elapsedSeconds));
      final newState = QuizState(
        questionStats: widget.state.questionStats,
        currentExam: null,
        examHistory: newHistory,
        allAnswered: widget.state.allAnswered,
      );
      await widget.onPersist(newState);
      widget.onExamFinished();
    }
  }

  @override
  Widget build(BuildContext context) {
    final exam = widget.state.currentExam;
    if (exam == null) return const SizedBox.shrink();

    final qId = exam.questionIds[exam.currentIndex];
    final question = _getQuestion(qId);
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
            // Header
            Padding(
              padding: const EdgeInsets.fromLTRB(AppSpacing.lg, AppSpacing.lg, AppSpacing.lg, AppSpacing.md),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: _handleGoHome,
                    child: Text('← Menü', style: tt.titleSmall!.copyWith(color: AppColors.tealLighter)),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.sm),
                    decoration: BoxDecoration(
                      color: AppColors.indigoSubtle,
                      border: Border.all(color: AppColors.indigoBorder),
                      borderRadius: BorderRadius.circular(AppSpacing.lg),
                    ),
                    child: Text(
                      _formatTime(_elapsedSeconds),
                      style: tt.titleSmall!.copyWith(
                        color: AppColors.textMuted,
                        fontFeatures: [const FontFeature.tabularFigures()],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.sm),
                    decoration: BoxDecoration(
                      color: AppColors.indigoSubtle,
                      border: Border.all(color: AppColors.indigoBorder),
                      borderRadius: BorderRadius.circular(AppSpacing.lg),
                    ),
                    child: Text(
                      '✓ $currentScore/$currentAnswered',
                      style: tt.titleSmall!.copyWith(color: AppColors.tealLighter),
                    ),
                  ),
                ],
              ),
            ),
            // Progress
            Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
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
                  Text('Frage $examProgress/$examTotal', style: tt.bodySmall!.copyWith(fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            // Question Card
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
                            boxShadow: const [
                              BoxShadow(color: Color(0x4D000000), blurRadius: 32, offset: Offset(0, 8)),
                            ],
                          ),
                          padding: const EdgeInsets.all(AppSpacing.lg),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Question number + glossary icon
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'FRAGE $examProgress${isMultiple ? ' · MEHRFACHAUSWAHL' : ''}',
                                    style: tt.labelSmall,
                                  ),
                                  if (_findGlossaryTerms(question).isNotEmpty)
                                    GestureDetector(
                                      onTap: () => _showGlossaryDialog(context, _findGlossaryTerms(question)),
                                      child: Container(
                                        padding: const EdgeInsets.all(AppSpacing.sm),
                                        decoration: BoxDecoration(
                                          color: AppColors.indigoSubtle,
                                          border: Border.all(color: AppColors.indigoBorder),
                                          borderRadius: BorderRadius.circular(AppSpacing.md),
                                        ),
                                        child: const Icon(Icons.help_outline_rounded, color: AppColors.tealLighter, size: 20),
                                      ),
                                    ),
                                ],
                              ),
                              const SizedBox(height: AppSpacing.lg),
                              // Question text
                              _buildQuestionText(question.q, tt),
                              const SizedBox(height: AppSpacing.lg),
                              // Options
                              ...List.generate(question.options.length, (idx) {
                                final isSelected = selected.contains(idx);
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                                  child: _OptionButton(
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
                              if (answered) _FeedbackBox(isCorrect: isCorrect, explanation: question.explanation),
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

  List<MapEntry<String, String>> _findGlossaryTerms(Question question) {
    final text = '${question.q} ${question.options.join(' ')}'.toLowerCase();
    return glossary.entries
        .where((e) => text.contains(e.key.toLowerCase()))
        .toList()
      ..sort((a, b) => a.key.toLowerCase().compareTo(b.key.toLowerCase()));
  }

  void _showGlossaryDialog(BuildContext context, List<MapEntry<String, String>> terms) {
    final tt = Theme.of(context).textTheme;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppColors.bgMid,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
        title: Text('Fachbegriffe in dieser Frage', style: tt.titleMedium),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: terms.length,
            separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
            itemBuilder: (_, i) {
              final term = terms[i];
              return Container(
                padding: const EdgeInsets.all(AppSpacing.lg),
                decoration: BoxDecoration(
                  color: AppColors.indigoSubtle,
                  borderRadius: BorderRadius.circular(AppSpacing.lg),
                  border: Border.all(color: AppColors.indigoBorder.withValues(alpha: 0.3)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(term.key, style: tt.titleSmall),
                    const SizedBox(height: 2),
                    Text(term.value, style: tt.bodyMedium?.copyWith(color: AppColors.textMuted)),
                  ],
                ),
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text('Schließen', style: TextStyle(color: AppColors.tealLighter)),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionText(String text, TextTheme tt) {
    final idx = text.indexOf('\n');
    if (idx == -1) {
      return Text(text, style: tt.titleLarge);
    }
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: text.substring(0, idx), style: tt.titleMedium!.copyWith(height: 1.5)),
          TextSpan(text: text.substring(idx), style: tt.bodyMedium!.copyWith(height: 1.5)),
        ],
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

class _OptionButton extends StatelessWidget {
  final int index;
  final String text;
  final bool isMultiple;
  final bool isSelected;
  final bool answered;
  final bool isCorrectOption;
  final VoidCallback onTap;

  const _OptionButton({
    required this.index,
    required this.text,
    required this.isMultiple,
    required this.isSelected,
    required this.answered,
    required this.isCorrectOption,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color bgColor = AppColors.surfaceDark;
    Color borderColor = const Color(0x26636AF1);
    double opacity = 1.0;

    if (!answered && isMultiple && isSelected) {
      bgColor = const Color(0x266366F1);
      borderColor = AppColors.indigo;
    }
    if (answered) {
      if (isCorrectOption) {
        bgColor = const Color(0x1F22C55E);
        borderColor = AppColors.green;
      } else if (isSelected) {
        bgColor = const Color(0x1FEF4444);
        borderColor = AppColors.red;
      } else {
        opacity = 0.45;
      }
    }

    return Opacity(
      opacity: opacity,
      child: GestureDetector(
        onTap: answered ? null : onTap,
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.lg),
          decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(AppSpacing.lg),
          ),
          child: Row(
            children: [
              // Checkbox for multiple
              if (isMultiple && !answered)
                Container(
                  width: 22,
                  height: 22,
                  margin: const EdgeInsets.only(right: AppSpacing.lg),
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.indigo : Colors.transparent,
                    border: Border.all(color: isSelected ? AppColors.indigo : AppColors.textDark, width: 2),
                    borderRadius: BorderRadius.circular(AppSpacing.sm),
                  ),
                  child: isSelected
                      ? const FittedBox(
                          child: Text(
                            '✓',
                            style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                        )
                      : null,
                ),
              // Option text
              Expanded(child: Text(text)),
              // Correct/Wrong indicator
              if (answered && isCorrectOption)
                const Text(
                  '✓',
                  style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w700, fontSize: 18),
                ),
              if (answered && isSelected && !isCorrectOption)
                const Text(
                  '✗',
                  style: TextStyle(color: AppColors.red, fontWeight: FontWeight.w700, fontSize: 18),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FeedbackBox extends StatelessWidget {
  final bool isCorrect;
  final String explanation;

  const _FeedbackBox({required this.isCorrect, required this.explanation});

  @override
  Widget build(BuildContext context) {
    final color = isCorrect ? AppColors.green : AppColors.red;
    final bgColor = isCorrect ? const Color(0x1422C55E) : const Color(0x14EF4444);
    final tt = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(top: AppSpacing.lg),
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(AppSpacing.lg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.xs),
            decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(AppSpacing.md)),
            child: Text(isCorrect ? '✓ Richtig!' : '✗ Falsch!', style: tt.labelMedium!.copyWith(color: Colors.white)),
          ),
          const SizedBox(height: AppSpacing.lg),
          Text(explanation, style: tt.bodyMedium!.copyWith(height: 1.65, color: const Color(0xFFCBD5E1))),
        ],
      ),
    );
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
          gradient: enabled
              ? AppColors.gradientIndigo
              : const LinearGradient(colors: [Color(0x4D6366F1), Color(0x4D8B5CF6)]),
          borderRadius: BorderRadius.circular(AppSpacing.lg),
          boxShadow: enabled ? const [BoxShadow(color: Color(0x4D6366F1), blurRadius: 16, offset: Offset(0, 4))] : null,
        ),
        child: ElevatedButton(
          onPressed: enabled ? onTap : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            disabledBackgroundColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
          ),
          child: Text(text, style: tt.labelLarge),
        ),
      ),
    );
  }
}

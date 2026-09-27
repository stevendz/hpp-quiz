import 'dart:ui';
import 'package:flutter/material.dart';
import '../data/all_questions.dart';
import '../models/question.dart';
import '../services/storage_service.dart';
import '../theme/app_theme.dart';
import 'question_widgets.dart';

final _questionsById = {for (final q in allQuestions) q.id: q};

class ResultScreen extends StatefulWidget {
  final ExamRecord lastExam;
  final VoidCallback onNewExam;
  final VoidCallback onGoHome;

  const ResultScreen({super.key, required this.lastExam, required this.onNewExam, required this.onGoHome});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late final List<Question> _questions;
  late final Set<int> _expanded;

  @override
  void initState() {
    super.initState();
    _questions = [
      for (final id in widget.lastExam.questionIds) ?_questionsById[id],
    ];
    _expanded = {
      for (var i = 0; i < _questions.length; i++)
        if (!_isCorrect(_questions[i])) i,
    };
  }

  bool _isCorrect(Question q) => widget.lastExam.answers[q.id]?.correct ?? false;

  void _toggle(int i) => setState(() => _expanded.contains(i) ? _expanded.remove(i) : _expanded.add(i));

  @override
  Widget build(BuildContext context) {
    final lastExam = widget.lastExam;
    final pct = (lastExam.score / lastExam.total * 100).round();
    final passed = pct >= 75;
    final tt = Theme.of(context).textTheme;

    return Container(
      decoration: const BoxDecoration(gradient: AppColors.gradientBg),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: AppSpacing.lg),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
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
                        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.lg),
                        child: Column(
                          children: [
                            Text(passed ? '🏆' : '📚', style: const TextStyle(fontSize: 64)),
                            const SizedBox(height: AppSpacing.lg),
                            Text(
                              passed ? 'Bestanden! 🎉' : 'Nicht bestanden',
                              style: tt.headlineLarge!.copyWith(color: passed ? AppColors.green : AppColors.red),
                            ),
                            const SizedBox(height: AppSpacing.lg),
                            Text('${lastExam.score} / ${lastExam.total}', style: tt.displayLarge),
                            const SizedBox(height: AppSpacing.xs),
                            Text('$pct% richtig', style: tt.headlineMedium!.copyWith(color: AppColors.textMuted)),
                            const SizedBox(height: AppSpacing.lg),
                            Text(
                              passed
                                  ? 'Hervorragend! Du hast diese Prüfung bestanden (≥75%).'
                                  : 'Du brauchst mindestens 75% zum Bestehen. Weiter üben!',
                              textAlign: TextAlign.center,
                              style: tt.bodyMedium!.copyWith(color: AppColors.textMuted),
                            ),
                            const SizedBox(height: AppSpacing.lg),
                            Wrap(
                              spacing: AppSpacing.lg,
                              runSpacing: AppSpacing.lg,
                              alignment: WrapAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: AppColors.gradientIndigo,
                                    borderRadius: BorderRadius.circular(AppSpacing.lg),
                                    boxShadow: const [
                                      BoxShadow(color: Color(0x4D6366F1), blurRadius: 16, offset: Offset(0, 4)),
                                    ],
                                  ),
                                  child: ElevatedButton(
                                    onPressed: widget.onNewExam,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: 16),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
                                    ),
                                    child: Text('Neue Prüfung', style: tt.labelLarge),
                                  ),
                                ),
                                TextButton(
                                  onPressed: widget.onGoHome,
                                  style: _secondaryButtonStyle,
                                  child: Text('Zurück', style: tt.titleSmall!.copyWith(color: const Color(0xFFA5B4FC))),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (_questions.isNotEmpty) ...[
                    const SizedBox(height: AppSpacing.lg * 2),
                    Text('Auswertung', style: tt.titleMedium),
                    const SizedBox(height: AppSpacing.md),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () => setState(() => _expanded.addAll(List.generate(_questions.length, (i) => i))),
                            style: _secondaryButtonStyle,
                            child: Text('Alle aufklappen', style: tt.titleSmall!.copyWith(color: const Color(0xFFA5B4FC))),
                          ),
                        ),
                        const SizedBox(width: AppSpacing.md),
                        Expanded(
                          child: TextButton(
                            onPressed: () => setState(_expanded.clear),
                            style: _secondaryButtonStyle,
                            child: Text('Alle zuklappen', style: tt.titleSmall!.copyWith(color: const Color(0xFFA5B4FC))),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.lg),
                    for (var i = 0; i < _questions.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: AppSpacing.md),
                        child: _ReviewTile(
                          number: i + 1,
                          question: _questions[i],
                          answer: lastExam.answers[_questions[i].id],
                          expanded: _expanded.contains(i),
                          onToggle: () => _toggle(i),
                        ),
                      ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final _secondaryButtonStyle = TextButton.styleFrom(
  backgroundColor: AppColors.indigoSubtle,
  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.lg),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(AppSpacing.lg),
    side: const BorderSide(color: Color(0x33636AF1)),
  ),
);

class _ReviewTile extends StatelessWidget {
  final int number;
  final Question question;
  final AnswerRecord? answer;
  final bool expanded;
  final VoidCallback onToggle;

  const _ReviewTile({
    required this.number,
    required this.question,
    required this.answer,
    required this.expanded,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final correct = answer?.correct ?? false;
    final color = correct ? AppColors.green : AppColors.red;
    final lineBreak = question.q.indexOf('\n');
    final stem = lineBreak == -1 ? question.q : question.q.substring(0, lineBreak);

    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBg,
        borderRadius: BorderRadius.circular(AppSpacing.lg),
        border: Border.all(color: color.withValues(alpha: 0.4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onToggle,
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 28,
                    height: 28,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: color.withValues(alpha: 0.15),
                      shape: BoxShape.circle,
                      border: Border.all(color: color),
                    ),
                    child: Text(correct ? '✓' : '✗', style: TextStyle(color: color, fontWeight: FontWeight.w700)),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('FRAGE $number', style: tt.labelSmall),
                        const SizedBox(height: 2),
                        Text(
                          stem,
                          style: tt.titleSmall,
                          maxLines: expanded ? null : 2,
                          overflow: expanded ? TextOverflow.visible : TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  AnimatedRotation(
                    turns: expanded ? 0.5 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: const Icon(Icons.expand_more_rounded, color: AppColors.textMuted),
                  ),
                ],
              ),
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 200),
            alignment: Alignment.topCenter,
            child: !expanded
                ? const SizedBox(width: double.infinity)
                : Padding(
                    padding: const EdgeInsets.fromLTRB(AppSpacing.lg, 0, AppSpacing.lg, AppSpacing.lg),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (lineBreak != -1) ...[
                          Text(question.q.substring(lineBreak + 1), style: tt.bodyMedium!.copyWith(height: 1.5)),
                          const SizedBox(height: AppSpacing.lg),
                        ],
                        for (var i = 0; i < question.options.length; i++)
                          Padding(
                            padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                            child: OptionButton(
                              index: i,
                              text: question.options[i],
                              isMultiple: question.isMultiple,
                              isSelected: answer?.selected.contains(i) ?? false,
                              answered: true,
                              isCorrectOption: question.correctIndices.contains(i),
                              onTap: () {},
                            ),
                          ),
                        FeedbackBox(isCorrect: correct, explanation: question.explanation),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

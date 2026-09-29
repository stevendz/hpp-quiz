import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class QuestionText extends StatelessWidget {
  final String text;

  const QuestionText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
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
}

class OptionButton extends StatelessWidget {
  final int index;
  final String text;
  final bool isMultiple;
  final bool isSelected;
  final bool answered;
  final bool isCorrectOption;
  final VoidCallback onTap;

  /// Einfachauswahl ohne sofortige Auswertung (Prüfungstag): Auswahl als Radio-Button zeigen.
  final bool showRadio;

  const OptionButton({
    super.key,
    required this.index,
    required this.text,
    required this.isMultiple,
    required this.isSelected,
    required this.answered,
    required this.isCorrectOption,
    required this.onTap,
    this.showRadio = false,
  });

  @override
  Widget build(BuildContext context) {
    Color bgColor = AppColors.surfaceDark;
    Color borderColor = const Color(0x26636AF1);
    double opacity = 1.0;

    // Unbewertete Auswahl: Mehrfachauswahl vor dem Bestätigen oder jede Frage am Prüfungstag.
    if (!answered && isSelected) {
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
              if (showRadio && !isMultiple && !answered)
                Container(
                  width: 22,
                  height: 22,
                  margin: const EdgeInsets.only(right: AppSpacing.lg),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: isSelected ? AppColors.indigo : AppColors.textDark, width: 2),
                  ),
                  child: isSelected
                      ? Center(
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(color: AppColors.indigo, shape: BoxShape.circle),
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

class FeedbackBox extends StatelessWidget {
  final bool isCorrect;
  final String explanation;

  const FeedbackBox({super.key, required this.isCorrect, required this.explanation});

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

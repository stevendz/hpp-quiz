import 'dart:ui';
import 'package:flutter/material.dart';
import '../services/storage_service.dart';
import '../theme/app_theme.dart';

class ResultScreen extends StatelessWidget {
  final ExamRecord lastExam;
  final VoidCallback onNewExam;
  final VoidCallback onGoHome;

  const ResultScreen({super.key, required this.lastExam, required this.onNewExam, required this.onGoHome});

  @override
  Widget build(BuildContext context) {
    final pct = (lastExam.score / lastExam.total * 100).round();
    final passed = pct >= 75;
    final tt = Theme.of(context).textTheme;

    return Container(
      decoration: const BoxDecoration(gradient: AppColors.gradientBg),
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: AppSpacing.lg),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSpacing.lg),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 480),
                  decoration: BoxDecoration(
                    color: AppColors.cardBg,
                    borderRadius: BorderRadius.circular(AppSpacing.lg),
                    border: Border.all(color: AppColors.indigoBorder.withValues(alpha: 0.15)),
                    boxShadow: const [BoxShadow(color: Color(0x4D000000), blurRadius: 32, offset: Offset(0, 8))],
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.lg),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
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
                              onPressed: onNewExam,
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
                            onPressed: onGoHome,
                            style: TextButton.styleFrom(
                              backgroundColor: AppColors.indigoSubtle,
                              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.lg),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(AppSpacing.lg),
                                side: const BorderSide(color: Color(0x33636AF1)),
                              ),
                            ),
                            child: Text('Zurück', style: tt.titleSmall!.copyWith(color: const Color(0xFFA5B4FC))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

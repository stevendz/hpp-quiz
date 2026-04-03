import 'dart:ui';
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ProfileScreen extends StatelessWidget {
  final VoidCallback onGoHome;
  final VoidCallback onShowStats;
  final VoidCallback onResetProgress;
  final VoidCallback onResetFlashcards;
  final bool hasExamHistory;
  final bool hasQuizProgress;

  const ProfileScreen({
    super.key,
    required this.onGoHome,
    required this.onShowStats,
    required this.onResetProgress,
    required this.onResetFlashcards,
    required this.hasExamHistory,
    required this.hasQuizProgress,
  });

  @override
  Widget build(BuildContext context) {
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
                  constraints: const BoxConstraints(maxWidth: 520),
                  decoration: BoxDecoration(
                    color: AppColors.cardBg,
                    borderRadius: BorderRadius.circular(AppSpacing.lg),
                    border: Border.all(color: AppColors.indigoBorder.withValues(alpha: 0.15)),
                    boxShadow: const [BoxShadow(color: Color(0x4D000000), blurRadius: 32, offset: Offset(0, 8))],
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.lg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: onGoHome,
                        child: Text('← Zurück', style: tt.titleSmall!.copyWith(color: const Color(0xFFA5B4FC))),
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      Center(
                        child: Column(
                          children: [
                            const Icon(Icons.person_rounded, size: 48, color: AppColors.textMuted),
                            const SizedBox(height: AppSpacing.md),
                            Text('Profil', style: tt.headlineMedium),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      if (hasExamHistory) ...[
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            onPressed: onShowStats,
                            style: TextButton.styleFrom(
                              backgroundColor: AppColors.indigoSubtle,
                              padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(AppSpacing.lg),
                                side: const BorderSide(color: Color(0x33636AF1)),
                              ),
                            ),
                            child: Text(
                              '📊 Prüfungsverlauf',
                              style: tt.titleSmall!.copyWith(color: const Color(0xFFA5B4FC)),
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSpacing.lg),
                      ],
                      if (hasQuizProgress) ...[
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            onPressed: onResetProgress,
                            style: TextButton.styleFrom(
                              backgroundColor: AppColors.surfaceDark,
                              padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(AppSpacing.lg),
                                side: BorderSide(color: AppColors.textDim.withValues(alpha: 0.3)),
                              ),
                            ),
                            child: Text(
                              'Fortschritt zurücksetzen',
                              style: tt.titleSmall!.copyWith(color: AppColors.textMuted),
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSpacing.lg),
                      ],
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: onResetFlashcards,
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.surfaceDark,
                            padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppSpacing.lg),
                              side: BorderSide(color: AppColors.textDim.withValues(alpha: 0.3)),
                            ),
                          ),
                          child: Text(
                            'Lernkarten zurücksetzen',
                            style: tt.titleSmall!.copyWith(color: AppColors.textMuted),
                          ),
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
    );
  }
}

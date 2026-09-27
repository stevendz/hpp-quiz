import 'package:flutter/material.dart';
import '../services/rating_service.dart';
import '../theme/app_theme.dart';

Future<void> showRateAppDialog(BuildContext context) {
  final tt = Theme.of(context).textTheme;
  return showDialog<void>(
    context: context,
    builder: (ctx) => AlertDialog(
      backgroundColor: AppColors.bgMid,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
      title: Text('Gefällt dir die App?', style: tt.titleMedium),
      content: Text(
        'Schön, dass du zufrieden bist! Hast du kurz Zeit, uns im App Store oder Play Store zu bewerten? Das hilft uns sehr.',
        style: tt.bodyMedium?.copyWith(color: AppColors.textMuted),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(ctx).pop(),
          child: Text('Nicht jetzt', style: tt.bodyMedium?.copyWith(color: AppColors.textMuted)),
        ),
        FilledButton(
          onPressed: () {
            Navigator.of(ctx).pop();
            RatingService.requestReview();
          },
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.teal,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
          ),
          child: Text('Jetzt bewerten', style: tt.labelLarge),
        ),
      ],
    ),
  );
}

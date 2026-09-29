import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'question_actions.dart';

class GlossaryTermsButton extends StatelessWidget {
  final List<MapEntry<String, String>> terms;
  final String title;

  const GlossaryTermsButton({super.key, required this.terms, required this.title});

  @override
  Widget build(BuildContext context) {
    return QuestionIconButton(
      icon: Icons.help_outline_rounded,
      tooltip: 'Fachbegriffe erklären',
      onTap: () => showGlossaryTermsDialog(context, terms, title: title),
    );
  }
}

void showGlossaryTermsDialog(BuildContext context, List<MapEntry<String, String>> terms, {required String title}) {
  final tt = Theme.of(context).textTheme;
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      backgroundColor: AppColors.bgMid,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
      title: Text(title, style: tt.titleMedium),
      content: SizedBox(
        width: double.maxFinite,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: terms.length,
          separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.md),
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
          child: const Text('Schließen', style: TextStyle(color: AppColors.tealLighter)),
        ),
      ],
    ),
  );
}

import 'package:flutter/material.dart';
import '../services/exam_modes.dart';
import '../services/storage_service.dart';
import '../theme/app_theme.dart';

/// Auswahl eines vergangenen Prüfungstermins für den Prüfungstag. Liefert z. B. „März 2025“.
Future<String?> showExamDayPicker(BuildContext context, QuizState state) {
  return showDialog<String>(context: context, builder: (_) => _ExamDayDialog(state: state));
}

class _ExamDayDialog extends StatelessWidget {
  final QuizState state;

  const _ExamDayDialog({required this.state});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final labels = pastExamLabels();
    final count = labels.isEmpty ? 0 : examDayQuestionIds(labels.first).length;

    return AlertDialog(
      backgroundColor: AppColors.bgMid,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
      title: Text('Prüfungstag simulieren', style: tt.headlineMedium),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Eine vergangene Prüfung wie am Prüfungstag: $count Fragen, ${examDaySeconds ~/ 60} Minuten, '
              'Auswertung erst nach dem Abgeben. Bestanden ab ${passMark(count)} richtigen Antworten.',
              style: tt.bodySmall!.copyWith(fontSize: 13, height: 1.5, color: AppColors.textMuted),
            ),
            const SizedBox(height: AppSpacing.lg),
            Flexible(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: labels.length,
                separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.sm),
                itemBuilder: (context, i) {
                  final label = labels[i];
                  final last = lastExamDayRecord(state, label);
                  final passed = last != null && last.score >= passMark(last.total);
                  return GestureDetector(
                    onTap: () => Navigator.of(context).pop(label),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.lg),
                      decoration: BoxDecoration(
                        color: AppColors.surfaceDark,
                        borderRadius: BorderRadius.circular(AppSpacing.lg),
                      ),
                      child: Row(
                        children: [
                          Expanded(child: Text(label, style: tt.titleSmall)),
                          if (last == null)
                            Text('neu', style: tt.bodySmall)
                          else
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: 2),
                              decoration: BoxDecoration(
                                color: (passed ? AppColors.green : AppColors.red).withValues(alpha: 0.15),
                                borderRadius: BorderRadius.circular(AppSpacing.md),
                              ),
                              child: Text(
                                '${last.score}/${last.total}',
                                style: tt.labelMedium!.copyWith(color: passed ? AppColors.green : AppColors.red),
                              ),
                            ),
                          const SizedBox(width: AppSpacing.sm),
                          const Icon(Icons.chevron_right_rounded, color: AppColors.textMuted),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Abbrechen', style: TextStyle(color: AppColors.textMuted)),
        ),
      ],
    );
  }
}

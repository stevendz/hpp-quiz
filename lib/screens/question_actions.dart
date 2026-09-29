import 'package:flutter/material.dart';
import '../models/question.dart';
import '../theme/app_theme.dart';
import 'report_sheet.dart';

/// Kleiner Aktions-Knopf im Stil des Glossar-Knopfs.
class QuestionIconButton extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;
  final Color color;

  const QuestionIconButton({super.key, required this.icon, required this.tooltip, required this.onTap, this.color = AppColors.tealLighter});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Semantics(
        button: true,
        label: tooltip,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(AppSpacing.sm),
            decoration: BoxDecoration(
              color: AppColors.indigoSubtle,
              border: Border.all(color: AppColors.indigoBorder),
              borderRadius: BorderRadius.circular(AppSpacing.md),
            ),
            child: Icon(icon, color: color, size: 20),
          ),
        ),
      ),
    );
  }
}

/// Merken und Melden für eine Frage.
class QuestionActions extends StatelessWidget {
  final Question question;
  final bool bookmarked;
  final VoidCallback onToggleBookmark;

  const QuestionActions({super.key, required this.question, required this.bookmarked, required this.onToggleBookmark});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        QuestionIconButton(
          icon: bookmarked ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
          tooltip: bookmarked ? 'Aus Merkliste entfernen' : 'Frage merken',
          color: bookmarked ? AppColors.amberLight : AppColors.tealLighter,
          onTap: onToggleBookmark,
        ),
        const SizedBox(width: AppSpacing.sm),
        QuestionIconButton(
          icon: Icons.flag_outlined,
          tooltip: 'Frage melden',
          onTap: () => ReportSheet.show(context, question),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../models/question.dart';
import '../theme/app_theme.dart';
import 'report_sheet.dart';

/// Kleiner Aktions-Knopf an der Frage: sichtbar 40 × 40, antippbar 48 × 48, mit Tooltip als Beschriftung.
class QuestionIconButton extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;
  final Color color;

  const QuestionIconButton({
    super.key,
    required this.icon,
    required this.tooltip,
    required this.onTap,
    this.color = AppColors.tealLighter,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      tooltip: tooltip,
      icon: Icon(icon, color: color, size: 22),
      style: IconButton.styleFrom(
        backgroundColor: AppColors.indigoSubtle,
        fixedSize: const Size(40, 40),
        minimumSize: const Size(40, 40),
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.padded,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.md),
          side: const BorderSide(color: AppColors.indigoBorder),
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
        QuestionIconButton(
          icon: Icons.flag_outlined,
          tooltip: 'Frage melden',
          onTap: () => ReportSheet.show(context, question),
        ),
      ],
    );
  }
}

/// Die Knöpfe haben rundum 4 pt unsichtbare Tippfläche (48 statt 40). Am rechten Rand verschoben, schließt der
/// letzte Knopf bündig mit dem Inhalt darunter ab.
class TrailingActions extends StatelessWidget {
  final List<Widget> children;

  const TrailingActions({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(AppSpacing.xs, 0),
      child: Row(mainAxisSize: MainAxisSize.min, children: children),
    );
  }
}

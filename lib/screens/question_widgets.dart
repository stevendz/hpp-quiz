import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

/// Fragetext: erste Zeile als Frage, darunter ggf. die nummerierten Aussagen.
/// Text.rich statt RichText, damit die Schriftgröße der Systemeinstellung folgt.
class QuestionText extends StatelessWidget {
  final String text;

  const QuestionText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final stem = tt.titleLarge!.copyWith(height: 1.45);
    final idx = text.indexOf('\n');
    if (idx == -1) return Text(text, style: stem);
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: text.substring(0, idx), style: stem),
          TextSpan(text: text.substring(idx), style: tt.bodyLarge!.copyWith(fontWeight: FontWeight.w400, height: 1.6)),
        ],
      ),
    );
  }
}

/// Hinweis bei Mehrfachauswahl, damit klar ist, dass mehrere Antworten gewählt werden können.
class MultipleChoiceHint extends StatelessWidget {
  const MultipleChoiceHint({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.checklist_rounded, size: 18, color: AppColors.textMuted),
        const SizedBox(width: AppSpacing.sm),
        Expanded(
          child: Text(
            'Mehrere Antworten möglich',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.textMuted),
          ),
        ),
      ],
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
    final tt = Theme.of(context).textTheme;
    var bgColor = AppColors.surfaceDark;
    var borderColor = AppColors.indigoBorder;
    var borderWidth = 1.0;
    var opacity = 1.0;

    // Unbewertete Auswahl: Mehrfachauswahl vor dem Bestätigen oder jede Frage am Prüfungstag.
    if (!answered && isSelected) {
      bgColor = AppColors.teal.withValues(alpha: 0.25);
      borderColor = AppColors.tealLighter;
      borderWidth = 2;
    }
    if (answered) {
      if (isCorrectOption) {
        bgColor = const Color(0x1F22C55E);
        borderColor = AppColors.green;
        borderWidth = 2;
      } else if (isSelected) {
        bgColor = const Color(0x1FEF4444);
        borderColor = AppColors.red;
        borderWidth = 2;
      } else {
        // Abgeblendet, aber lesbar (≥ 4,5:1) – die Erklärung bezieht sich oft auf diese Antworten.
        opacity = 0.6;
      }
    }

    final String? result = !answered
        ? null
        : isCorrectOption
            ? (isSelected ? 'richtig, gewählt' : 'richtige Antwort')
            : (isSelected ? 'falsch, gewählt' : null);

    return Semantics(
      label: 'Antwort ${index + 1}: $text${result != null ? ', $result' : ''}',
      button: !answered && !isMultiple && !showRadio,
      checked: !answered && (isMultiple || showRadio) ? isSelected : null,
      inMutuallyExclusiveGroup: showRadio && !isMultiple,
      selected: isSelected,
      excludeSemantics: true,
      onTap: answered ? null : onTap,
      child: Opacity(
        opacity: opacity,
        child: Material(
          color: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.lg),
            side: BorderSide(color: borderColor, width: borderWidth),
          ),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: answered ? null : onTap,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 52),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl, vertical: AppSpacing.lg + 2),
                child: Row(
                  children: [
                    if (isMultiple && !answered) ...[
                      _Checkbox(checked: isSelected),
                      const SizedBox(width: AppSpacing.lg),
                    ],
                    if (showRadio && !isMultiple && !answered) ...[
                      _Radio(selected: isSelected),
                      const SizedBox(width: AppSpacing.lg),
                    ],
                    Expanded(
                      child: Text(text, style: tt.bodyLarge!.copyWith(fontWeight: FontWeight.w400, height: 1.45)),
                    ),
                    if (answered && isCorrectOption) ...[
                      const SizedBox(width: AppSpacing.md),
                      const Icon(Icons.check_circle_rounded, color: AppColors.green, size: 22),
                    ],
                    if (answered && isSelected && !isCorrectOption) ...[
                      const SizedBox(width: AppSpacing.md),
                      const Icon(Icons.cancel_rounded, color: AppColors.redLight, size: 22),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Checkbox extends StatelessWidget {
  final bool checked;

  const _Checkbox({required this.checked});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: checked ? AppColors.tealLighter : Colors.transparent,
        border: Border.all(color: checked ? AppColors.tealLighter : AppColors.textMuted, width: 2),
        borderRadius: BorderRadius.circular(AppSpacing.sm),
      ),
      child: checked ? const Icon(Icons.check_rounded, size: 18, color: AppColors.bgDark) : null,
    );
  }
}

class _Radio extends StatelessWidget {
  final bool selected;

  const _Radio({required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: selected ? AppColors.tealLighter : AppColors.textMuted, width: 2),
      ),
      child: selected
          ? Center(
              child: Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(color: AppColors.tealLighter, shape: BoxShape.circle),
              ),
            )
          : null,
    );
  }
}

/// Auswertung nach dem Antworten. Screenreader lesen „Richtig“ bzw. „Falsch“ sofort vor.
class FeedbackBox extends StatelessWidget {
  final bool isCorrect;
  final String explanation;

  const FeedbackBox({super.key, required this.isCorrect, required this.explanation});

  @override
  Widget build(BuildContext context) {
    final color = isCorrect ? AppColors.green : AppColors.red;
    final bgColor = isCorrect ? const Color(0x1422C55E) : const Color(0x14EF4444);
    final tt = Theme.of(context).textTheme;

    return Semantics(
      liveRegion: true,
      container: true,
      child: Container(
        margin: const EdgeInsets.only(top: AppSpacing.lg),
        padding: const EdgeInsets.all(AppSpacing.xl),
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
              decoration: BoxDecoration(
                color: isCorrect ? AppColors.greenStrong : AppColors.redStrong,
                borderRadius: BorderRadius.circular(AppSpacing.md),
              ),
              child: Text(
                isCorrect ? '✓ Richtig!' : '✗ Falsch!',
                semanticsLabel: isCorrect ? 'Richtig' : 'Falsch',
                style: tt.labelMedium!.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Text(
              explanation,
              style: tt.bodyLarge!.copyWith(fontWeight: FontWeight.w400, height: 1.6, color: const Color(0xFFCBD5E1)),
            ),
          ],
        ),
      ),
    );
  }
}

/// „Menü“ oben links in Prüfung und Prüfungstag – mit 48 pt hoher Tippfläche.
class BackToMenuButton extends StatelessWidget {
  final VoidCallback onPressed;

  const BackToMenuButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.arrow_back_rounded, size: 20),
      label: const Text('Menü'),
      style: TextButton.styleFrom(
        foregroundColor: AppColors.tealLighter,
        textStyle: Theme.of(context).textTheme.titleSmall,
        minimumSize: const Size(48, 48),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      ),
    );
  }
}

/// Anzeige in der Kopfzeile (Uhr, Punktestand). [semantics] ersetzt für Screenreader den Kurztext.
class StatusPill extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final String semantics;

  const StatusPill({super.key, required this.icon, required this.color, required this.text, required this.semantics});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Semantics(
      label: semantics,
      excludeSemantics: true,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.sm),
        decoration: BoxDecoration(
          color: AppColors.indigoSubtle,
          border: Border.all(color: AppColors.indigoBorder),
          borderRadius: BorderRadius.circular(AppSpacing.lg),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 16, color: color),
            const SizedBox(width: AppSpacing.sm),
            Text(text, style: tt.titleSmall!.copyWith(color: color, fontFeatures: const [FontFeature.tabularFigures()])),
          ],
        ),
      ),
    );
  }
}

/// Kopfzeile von Prüfung und Prüfungstag: Menü links, zwei Anzeigen. Bei sehr großer Schrift werden die
/// Anzeigen verkleinert statt abgeschnitten.
class ExamHeader extends StatelessWidget {
  final VoidCallback onMenu;
  final Widget center;
  final Widget trailing;

  const ExamHeader({super.key, required this.onMenu, required this.center, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(AppSpacing.md, AppSpacing.xs, AppSpacing.xl, AppSpacing.xs),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: BackToMenuButton(onPressed: onMenu),
            ),
          ),
          Flexible(child: FittedBox(fit: BoxFit.scaleDown, child: center)),
          Flexible(
            child: FittedBox(fit: BoxFit.scaleDown, alignment: Alignment.centerRight, child: trailing),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../services/exam_modes.dart';
import '../services/study_plan.dart';
import '../theme/app_theme.dart';

/// Zeile unter dem App-Titel: „Prüfung in 15 Tagen · 14. Oktober“. Antippen ändert den Termin.
class ExamCountdown extends StatelessWidget {
  final StudyPlan? plan;
  final int? daysLeft;
  final VoidCallback onTap;

  const ExamCountdown({super.key, required this.plan, required this.daysLeft, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final plan = this.plan;
    final daysLeft = this.daysLeft;

    final (String title, String? date) = switch (daysLeft) {
      null => ('Prüfungsdatum festlegen', null),
      < 0 => ('Prüfung vorbei? Neuen Termin festlegen', null),
      0 => ('Heute ist Prüfungstag – viel Erfolg! 🍀', null),
      1 => ('Prüfung morgen', formatDayMonth(plan!.examDate)),
      _ => ('Prüfung in $daysLeft Tagen', formatDayMonth(plan!.examDate)),
    };

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSpacing.md),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.xs),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.event_rounded, size: 16, color: AppColors.tealLighter),
            const SizedBox(width: AppSpacing.sm),
            Flexible(
              child: Text(title, style: tt.titleSmall!.copyWith(color: AppColors.textSecondary)),
            ),
            if (date != null) ...[
              Text(' · ', style: tt.bodyMedium!.copyWith(color: AppColors.textDim)),
              Text(date, style: tt.bodyMedium!.copyWith(color: AppColors.textMuted)),
            ],
            const SizedBox(width: AppSpacing.sm),
            const Icon(Icons.edit_rounded, size: 14, color: AppColors.textDim),
          ],
        ),
      ),
    );
  }
}

/// Die Box auf der Startseite: Tagesziel und Lernserie groß, darunter der Stand über alle Fragen.
class StudyPlanCard extends StatelessWidget {
  final StudyPlan? plan;
  final StudyStatus status;
  final VoidCallback onTap;

  const StudyPlanCard({super.key, required this.plan, required this.status, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surfaceDark,
      borderRadius: BorderRadius.circular(AppSpacing.lg),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSpacing.lg),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.lg + 4,
            AppSpacing.lg + 4,
            AppSpacing.lg + 4,
            AppSpacing.lg * 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _DailyGoal(plan: plan, status: status),
              const SizedBox(height: AppSpacing.lg * 2),
              Divider(height: 1, color: AppColors.indigoBorder.withValues(alpha: 0.4)),
              const SizedBox(height: AppSpacing.lg + 4),
              _Counters(status: status),
            ],
          ),
        ),
      ),
    );
  }
}

/// Tagesziel: erledigte Übungsprüfungen, Fragen heute und die Lernserie – mit Balken für den heutigen Stand.
class _DailyGoal extends StatelessWidget {
  final StudyPlan? plan;
  final StudyStatus status;

  const _DailyGoal({required this.plan, required this.status});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final plan = this.plan;
    final daysLeft = status.daysLeft;
    final active = plan != null && daysLeft != null && daysLeft > 0;
    final done = status.goalReached;
    final goalQuestions = status.goalQuestions;
    final examsDone = (status.answeredToday ~/ examSize).clamp(0, status.examsPerDay);
    final color = done ? AppColors.green : AppColors.tealLighter;
    final streak = status.streak;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                done ? 'TAGESZIEL ERREICHT ✓' : 'TAGESZIEL',
                style: tt.labelSmall!.copyWith(color: done ? AppColors.greenLight : null),
              ),
            ),
            if (plan != null && active) _Reminder(plan: plan),
          ],
        ),
        const SizedBox(height: AppSpacing.lg),
        Row(
          children: [
            _StatItem(
              value: active ? '$examsDone/${status.examsPerDay}' : '–',
              label: 'Prüfungen',
              color: color,
              align: CrossAxisAlignment.start,
            ),
            _StatItem(
              value: active ? '${status.answeredToday}/$goalQuestions' : '${status.answeredToday}',
              label: 'Fragen heute',
              color: color,
            ),
            _StatItem(
              value: '$streak',
              label: streak == 1 ? 'Tag in Folge' : 'Tage in Folge',
              color: streak > 0 ? AppColors.amberLight : AppColors.textDim,
              icon: Icons.local_fire_department_rounded,
              align: CrossAxisAlignment.end,
            ),
          ],
        ),
        if (active) ...[
          const SizedBox(height: AppSpacing.lg),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSpacing.xs),
            child: LinearProgressIndicator(
              value: goalQuestions == 0
                  ? 0
                  : (status.answeredToday / goalQuestions).clamp(0.0, 1.0),
              minHeight: 10,
              color: color,
              backgroundColor: AppColors.bgDark.withValues(alpha: 0.6),
            ),
          ),
        ],
      ],
    );
  }
}

class _Reminder extends StatelessWidget {
  final StudyPlan plan;

  const _Reminder({required this.plan});

  @override
  Widget build(BuildContext context) {
    final on = plan.remindersEnabled;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          on ? Icons.notifications_rounded : Icons.notifications_off_rounded,
          size: 14,
          color: AppColors.textDim,
        ),
        const SizedBox(width: AppSpacing.xs),
        Text(
          on ? '${formatTime(plan.reminderMinutes)} Uhr' : 'Aus',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.textDim),
        ),
      ],
    );
  }
}

/// Großer Wert mit Beschriftung. [align]: links, mittig oder rechts – die äußeren Werte schließen bündig
/// mit dem Rand der Box ab, wie Überschrift, Balken und Zähler.
class _StatItem extends StatelessWidget {
  final String value;
  final String label;
  final Color color;
  final IconData? icon;
  final CrossAxisAlignment align;

  const _StatItem({
    required this.value,
    required this.label,
    required this.color,
    this.icon,
    this.align = CrossAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final icon = this.icon;
    return Expanded(
      child: Column(
        crossAxisAlignment: align,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: switch (align) {
              CrossAxisAlignment.start => Alignment.centerLeft,
              CrossAxisAlignment.end => Alignment.centerRight,
              _ => Alignment.center,
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Icon(icon, size: 20, color: color),
                  const SizedBox(width: 2),
                ],
                Text(value, style: tt.headlineMedium!.copyWith(color: color)),
              ],
            ),
          ),
          const SizedBox(height: 2),
          Text(label, style: tt.bodySmall!.copyWith(fontSize: 11, color: AppColors.textDim)),
        ],
      ),
    );
  }
}

/// Stand über alle Fragen – klein, mit schmalem Balken.
class _Counters extends StatelessWidget {
  final StudyStatus status;

  const _Counters({required this.status});

  @override
  Widget build(BuildContext context) {
    final total = status.total;
    final correctPct = total > 0 ? status.mastered / total : 0.0;
    final wrongPct = total > 0 ? status.wrong / total : 0.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: AppSpacing.lg,
          runSpacing: AppSpacing.xs,
          children: [
            _SmallStat(
              value: '${status.seen}/$total',
              icon: Icons.visibility_rounded,
              label: 'gesehen',
              color: AppColors.tealLighter,
            ),
            _SmallStat(
              value: '${status.mastered}',
              icon: Icons.check_circle_rounded,
              label: 'korrekt',
              color: AppColors.green,
            ),
            _SmallStat(
              value: '${status.wrong}',
              icon: Icons.cancel_rounded,
              label: 'falsch',
              color: AppColors.red,
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        ClipRRect(
          borderRadius: BorderRadius.circular(AppSpacing.xs),
          child: SizedBox(
            height: 5,
            child: Row(
              children: [
                if (correctPct > 0)
                  Flexible(
                    flex: (correctPct * 1000).round(),
                    child: Container(color: AppColors.green),
                  ),
                if (wrongPct > 0)
                  Flexible(
                    flex: (wrongPct * 1000).round(),
                    child: Container(color: AppColors.red),
                  ),
                if (correctPct + wrongPct < 1)
                  Flexible(
                    flex: ((1 - correctPct - wrongPct) * 1000).round(),
                    child: Container(color: AppColors.bgDark.withValues(alpha: 0.6)),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/// Zahl mit Icon in derselben Farbe und Größe; [label] liest der Screenreader vor.
class _SmallStat extends StatelessWidget {
  final String value;
  final IconData icon;
  final String label;
  final Color color;

  const _SmallStat({required this.value, required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.labelMedium!.copyWith(color: color.withValues(alpha: 0.85));
    return Semantics(
      label: '$value $label',
      excludeSemantics: true,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(value, style: style),
          const SizedBox(width: AppSpacing.xs),
          // Material-Icons haben einen Innenrand – etwas größer wirken sie so hoch wie die Ziffern.
          Icon(icon, size: style.fontSize! * 1.15, color: style.color),
        ],
      ),
    );
  }
}

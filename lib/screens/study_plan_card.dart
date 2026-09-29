import 'package:flutter/material.dart';
import '../services/study_plan.dart';
import '../theme/app_theme.dart';

/// Die Box auf der Startseite: Prüfungstermin, Fortschritt über alle Fragen und das Tagesziel in Übungsprüfungen.
class StudyPlanCard extends StatelessWidget {
  final StudyPlan? plan;
  final StudyStatus status;
  final VoidCallback onTap;

  const StudyPlanCard({super.key, required this.plan, required this.status, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final plan = this.plan;
    final daysLeft = status.daysLeft;
    final active = plan != null && daysLeft != null && daysLeft > 0;

    return Material(
      color: AppColors.surfaceDark,
      borderRadius: BorderRadius.circular(AppSpacing.lg),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSpacing.lg),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(AppSpacing.lg + 4, AppSpacing.lg + 4, AppSpacing.lg + 4, AppSpacing.lg * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Header(plan: plan, daysLeft: daysLeft),
              const SizedBox(height: AppSpacing.lg * 2),
              _Counters(status: status),
              if (active) ...[
                const SizedBox(height: AppSpacing.lg * 2),
                Divider(height: 1, color: AppColors.indigoBorder.withValues(alpha: 0.4)),
                const SizedBox(height: AppSpacing.lg * 2),
                _DailyGoal(plan: plan, status: status),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final StudyPlan? plan;
  final int? daysLeft;

  const _Header({required this.plan, required this.daysLeft});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final plan = this.plan;
    final daysLeft = this.daysLeft;

    final (IconData icon, String title, String? trailing) = switch (daysLeft) {
      null => (Icons.event_rounded, 'Prüfungsdatum festlegen', null),
      < 0 => (Icons.event_rounded, 'Prüfung vorbei? Neuen Termin festlegen', null),
      0 => (Icons.emoji_events_rounded, 'Heute ist Prüfungstag – viel Erfolg! 🍀', null),
      1 => (Icons.event_rounded, 'Prüfung morgen', formatDayMonth(plan!.examDate)),
      _ => (Icons.event_rounded, 'Prüfung in $daysLeft Tagen', formatDayMonth(plan!.examDate)),
    };

    return Row(
      children: [
        Icon(icon, size: 18, color: AppColors.tealLighter),
        const SizedBox(width: AppSpacing.md),
        Expanded(child: Text(title, style: tt.titleSmall)),
        if (trailing != null) ...[
          Text(trailing, style: tt.bodySmall!.copyWith(color: AppColors.textMuted)),
          const SizedBox(width: AppSpacing.xs),
          const Icon(Icons.edit_rounded, size: 14, color: AppColors.textDim),
        ] else
          const Icon(Icons.chevron_right_rounded, color: AppColors.textMuted),
      ],
    );
  }
}

/// Gesehen, korrekt, falsch – mit Balken über alle Fragen.
class _Counters extends StatelessWidget {
  final StudyStatus status;

  const _Counters({required this.status});

  @override
  Widget build(BuildContext context) {
    final total = status.total;
    final correctPct = total > 0 ? status.mastered / total : 0.0;
    final wrongPct = total > 0 ? status.wrong / total : 0.0;

    return Column(
      children: [
        Row(
          children: [
            _StatItem(label: 'Gesehen', value: '${status.seen}/$total', color: AppColors.tealLighter),
            _StatItem(label: 'Korrekt', value: '${status.mastered}', color: AppColors.green),
            _StatItem(label: 'Falsch', value: '${status.wrong}', color: AppColors.red),
          ],
        ),
        const SizedBox(height: AppSpacing.lg),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSpacing.xs),
            child: SizedBox(
              height: 10,
              child: Row(
                children: [
                  if (correctPct > 0) Flexible(flex: (correctPct * 1000).round(), child: Container(color: AppColors.green)),
                  if (wrongPct > 0) Flexible(flex: (wrongPct * 1000).round(), child: Container(color: AppColors.red)),
                  if (correctPct + wrongPct < 1)
                    Flexible(
                      flex: ((1 - correctPct - wrongPct) * 1000).round(),
                      child: Container(color: AppColors.surfaceDark.withValues(alpha: 0.5)),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _StatItem({required this.label, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Expanded(
      child: Column(
        children: [
          Text(value, style: tt.headlineMedium!.copyWith(color: color)),
          const SizedBox(height: 2),
          Text(label, style: tt.bodySmall!.copyWith(fontSize: 11, color: AppColors.textDim)),
        ],
      ),
    );
  }
}

/// Tagesziel in Übungsprüfungen, heutiger Stand in Fragen, dazu Serie und Erinnerung.
class _DailyGoal extends StatelessWidget {
  final StudyPlan plan;
  final StudyStatus status;

  const _DailyGoal({required this.plan, required this.status});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final done = status.goalReached;
    final goal = status.goalQuestions;
    final progress = goal == 0 ? 0.0 : (status.answeredToday / goal).clamp(0.0, 1.0);
    final barColor = done ? AppColors.green : AppColors.tealLighter;
    final enough = examsPerDayEnough(status.examsPerDay);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                done ? 'Tagesziel erreicht ✓' : 'Tagesziel: ${examsLabel(status.examsPerDay)}',
                style: tt.titleSmall!.copyWith(color: done ? AppColors.greenLight : null),
              ),
            ),
            Text.rich(
              TextSpan(children: [
                TextSpan(text: '${status.answeredToday}', style: tt.titleMedium!.copyWith(color: barColor)),
                TextSpan(text: ' / $goal Fragen', style: tt.bodySmall!.copyWith(color: AppColors.textMuted)),
              ]),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        ClipRRect(
          borderRadius: BorderRadius.circular(AppSpacing.xs),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 8,
            color: barColor,
            backgroundColor: AppColors.bgDark.withValues(alpha: 0.6),
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          status.remaining == 0
              ? 'Alle Fragen sitzen. $enough, um dein Wissen frisch zu halten.'
              : '$enough, damit du bis zum ${formatDayMonth(plan.examDate)} alle ${status.remaining} offenen Fragen '
                  'sicher kannst.',
          style: tt.bodySmall!.copyWith(fontSize: 13, height: 1.45, color: AppColors.textMuted),
        ),
        const SizedBox(height: AppSpacing.md),
        Wrap(
          spacing: AppSpacing.lg,
          runSpacing: AppSpacing.xs,
          children: [
            if (status.streak > 0)
              _Fact(
                icon: Icons.local_fire_department_rounded,
                text: '${daysLabel(status.streak)} in Folge',
                color: AppColors.amberLight,
              ),
            _Fact(
              icon: plan.remindersEnabled ? Icons.notifications_rounded : Icons.notifications_off_rounded,
              text: plan.remindersEnabled ? 'Erinnerung ${formatTime(plan.reminderMinutes)} Uhr' : 'Keine Erinnerung',
            ),
          ],
        ),
      ],
    );
  }
}

class _Fact extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const _Fact({required this.icon, required this.text, this.color = AppColors.textMuted});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: color),
        const SizedBox(width: AppSpacing.xs),
        Flexible(
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: color),
          ),
        ),
      ],
    );
  }
}

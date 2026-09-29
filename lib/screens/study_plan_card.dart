import 'package:flutter/material.dart';
import '../services/study_plan.dart';
import '../theme/app_theme.dart';

/// Lernplan auf der Startseite: Countdown, Tagesziel und Serie – ohne Plan ein Hinweis zum Anlegen.
class StudyPlanCard extends StatelessWidget {
  final StudyPlan? plan;
  final StudyStatus? status;
  final VoidCallback onTap;

  const StudyPlanCard({super.key, required this.plan, required this.status, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final plan = this.plan;
    final status = this.status;
    return Material(
      color: AppColors.surfaceDark,
      borderRadius: BorderRadius.circular(AppSpacing.lg),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSpacing.lg),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg + 4),
          child: plan == null || status == null
              ? const _Invite(
                  title: 'Lernplan erstellen',
                  subtitle: 'Prüfungsdatum eintragen, Tagesziel erhalten und täglich erinnert werden',
                )
              : status.daysLeft < 0
                  ? const _Invite(
                      title: 'Prüfung geschafft?',
                      subtitle: 'Trag den nächsten Termin ein oder lösche den Lernplan',
                    )
                  : status.daysLeft == 0
                      ? const _Invite(
                          title: 'Heute ist Prüfungstag 🍀',
                          subtitle: 'Viel Erfolg! Lies jede Frage in Ruhe.',
                          icon: Icons.emoji_events_rounded,
                        )
                      : _Active(plan: plan, status: status),
        ),
      ),
    );
  }
}

class _Invite extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const _Invite({required this.title, required this.subtitle, this.icon = Icons.event_rounded});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(color: AppColors.indigoSubtle, shape: BoxShape.circle),
          child: Icon(icon, size: 22, color: AppColors.tealLighter),
        ),
        const SizedBox(width: AppSpacing.lg),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: tt.titleSmall),
              const SizedBox(height: 2),
              Text(subtitle, style: tt.bodySmall!.copyWith(color: AppColors.textMuted, height: 1.4)),
            ],
          ),
        ),
        const Icon(Icons.chevron_right_rounded, color: AppColors.textMuted),
      ],
    );
  }
}

class _Active extends StatelessWidget {
  final StudyPlan plan;
  final StudyStatus status;

  const _Active({required this.plan, required this.status});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final done = status.goalReached;
    final progress = status.goal == 0 ? 0.0 : (status.answeredToday / status.goal).clamp(0.0, 1.0);
    final barColor = done ? AppColors.green : AppColors.tealLighter;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.event_rounded, size: 18, color: AppColors.tealLighter),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Text(
                status.daysLeft == 1 ? 'Prüfung morgen' : 'Prüfung in ${status.daysLeft} Tagen',
                style: tt.titleSmall,
              ),
            ),
            Text(formatDayMonth(plan.examDate), style: tt.bodySmall!.copyWith(color: AppColors.textMuted)),
            const SizedBox(width: AppSpacing.xs),
            const Icon(Icons.edit_rounded, size: 14, color: AppColors.textDim),
          ],
        ),
        const SizedBox(height: AppSpacing.lg + 4),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                done ? 'Tagesziel erreicht ✓' : 'Tagesziel heute',
                style: tt.bodySmall!.copyWith(color: done ? AppColors.greenLight : AppColors.textMuted),
              ),
            ),
            Text.rich(
              TextSpan(children: [
                TextSpan(text: '${status.answeredToday}', style: tt.titleMedium!.copyWith(color: barColor)),
                TextSpan(text: ' / ${questionsLabel(status.goal)}', style: tt.bodySmall!.copyWith(color: AppColors.textMuted)),
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
        const SizedBox(height: AppSpacing.lg),
        Wrap(
          spacing: AppSpacing.lg,
          runSpacing: AppSpacing.xs,
          children: [
            _Fact(icon: Icons.flag_rounded, text: status.remaining == 0 ? 'Alle Fragen sitzen' : '${status.remaining} offen'),
            if (status.streak > 0)
              _Fact(icon: Icons.local_fire_department_rounded, text: '${daysLabel(status.streak)} in Folge', color: AppColors.amberLight),
            _Fact(
              icon: plan.remindersEnabled ? Icons.notifications_rounded : Icons.notifications_off_rounded,
              text: plan.remindersEnabled ? '${formatTime(plan.reminderMinutes)} Uhr' : 'Keine Erinnerung',
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
        Text(text, style: Theme.of(context).textTheme.bodySmall!.copyWith(color: color)),
      ],
    );
  }
}

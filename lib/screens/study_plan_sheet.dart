import 'package:flutter/material.dart';
import '../services/exam_modes.dart';
import '../services/study_plan.dart';
import '../theme/app_theme.dart';

/// Prüfungsdatum und tägliche Erinnerung festlegen. Liefert den neuen Lernplan, null bei Abbruch.
///
/// [mandatory]: Ohne gültigen Termin (erster Start, Prüfung vorbei) lässt sich das Formular nicht schließen,
/// bevor ein Datum gewählt ist.
class StudyPlanSheet extends StatefulWidget {
  final StudyPlan? plan;
  final int remaining;
  final bool mandatory;

  const StudyPlanSheet({super.key, required this.plan, required this.remaining, this.mandatory = false});

  static Future<StudyPlan?> show(
    BuildContext context, {
    required StudyPlan? plan,
    required int remaining,
    bool mandatory = false,
  }) {
    return showModalBottomSheet<StudyPlan>(
      context: context,
      isScrollControlled: true,
      isDismissible: !mandatory,
      enableDrag: !mandatory,
      backgroundColor: AppColors.bgMid,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => PopScope(
        canPop: !mandatory,
        child: StudyPlanSheet(plan: plan, remaining: remaining, mandatory: mandatory),
      ),
    );
  }

  @override
  State<StudyPlanSheet> createState() => _StudyPlanSheetState();
}

class _StudyPlanSheetState extends State<StudyPlanSheet> {
  DateTime? _examDate;
  late bool _reminders;
  late int _reminderMinutes;

  @override
  void initState() {
    super.initState();
    final plan = widget.plan;
    // Ein vergangenes Datum nicht vorbelegen – dann ist ein neuer Termin fällig.
    _examDate = plan != null && plan.daysLeft(DateTime.now()) > 0 ? plan.examDate : null;
    _reminders = plan?.remindersEnabled ?? true;
    _reminderMinutes = plan?.reminderMinutes ?? StudyPlan.defaultReminderMinutes;
  }

  /// Dunkles Farbschema für Datums- und Zeitauswahl, passend zur App.
  Widget _pickerTheme(BuildContext context, Widget? child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: AppColors.teal,
                onPrimary: Colors.white,
                primaryContainer: AppColors.teal,
                onPrimaryContainer: Colors.white,
                surface: AppColors.bgMid,
                onSurface: AppColors.textPrimary,
              ),
          dialogTheme: const DialogThemeData(backgroundColor: AppColors.bgMid),
          textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: AppColors.tealLighter)),
        ),
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        ),
      );

  Future<void> _pickDate() async {
    final today = dateOnly(DateTime.now());
    final picked = await showDatePicker(
      context: context,
      initialDate: _examDate ?? DateTime(today.year, today.month, today.day + 30),
      firstDate: DateTime(today.year, today.month, today.day + 1),
      lastDate: DateTime(today.year + 2, today.month, today.day),
      helpText: 'Prüfungsdatum',
      builder: _pickerTheme,
    );
    if (picked != null) setState(() => _examDate = picked);
  }

  Future<void> _pickTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: _reminderMinutes ~/ 60, minute: _reminderMinutes % 60),
      helpText: 'Erinnerung um',
      builder: _pickerTheme,
    );
    if (picked != null) setState(() => _reminderMinutes = picked.hour * 60 + picked.minute);
  }

  void _save() {
    Navigator.pop(
      context,
      StudyPlan(examDate: _examDate!, remindersEnabled: _reminders, reminderMinutes: _reminderMinutes),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final examDate = _examDate;
    final expired = widget.plan != null && widget.plan!.daysLeft(DateTime.now()) < 0;

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.lg * 2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.plan == null
                  ? 'Wann ist deine Prüfung?'
                  : expired
                      ? 'Wann ist deine nächste Prüfung?'
                      : 'Lernplan',
              style: tt.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              'Trag dein Prüfungsdatum ein. Die App rechnet aus, wie viele Übungsprüfungen pro Tag reichen, '
              'und erinnert dich täglich ans Üben.',
              style: tt.bodySmall!.copyWith(fontSize: 13, height: 1.5, color: AppColors.textMuted),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.lg * 2),
            _Tile(
              icon: Icons.event_rounded,
              label: 'Prüfungsdatum',
              value: examDate == null ? 'Datum wählen' : formatShortDate(examDate),
              highlight: examDate == null,
              onTap: _pickDate,
            ),
            const SizedBox(height: AppSpacing.md),
            _Tile(
              icon: Icons.notifications_rounded,
              label: 'Tägliche Erinnerung',
              onTap: () => setState(() => _reminders = !_reminders),
              trailing: Switch(
                value: _reminders,
                onChanged: (v) => setState(() => _reminders = v),
                activeThumbColor: Colors.white,
                activeTrackColor: AppColors.teal,
              ),
            ),
            if (_reminders) ...[
              const SizedBox(height: AppSpacing.md),
              _Tile(
                icon: Icons.schedule_rounded,
                label: 'Uhrzeit',
                value: '${formatTime(_reminderMinutes)} Uhr',
                onTap: _pickTime,
              ),
            ],
            if (examDate != null) ...[
              const SizedBox(height: AppSpacing.lg * 2),
              _Preview(examDate: examDate, remaining: widget.remaining),
            ],
            const SizedBox(height: AppSpacing.lg * 2),
            FilledButton(
              onPressed: examDate == null ? null : _save,
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.teal,
                disabledBackgroundColor: AppColors.surfaceDark,
                padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg + 2),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
              ),
              child: Text(
                widget.mandatory ? 'Lernplan starten' : 'Speichern',
                style: tt.labelLarge!.copyWith(color: examDate == null ? AppColors.textDim : null),
              ),
            ),
            if (!widget.mandatory)
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Abbrechen', style: tt.bodyMedium?.copyWith(color: AppColors.textMuted)),
              ),
          ],
        ),
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? value;
  final bool highlight;
  final Widget? trailing;
  final VoidCallback onTap;

  const _Tile({
    required this.icon,
    required this.label,
    required this.onTap,
    this.value,
    this.highlight = false,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Material(
      color: AppColors.surfaceDark,
      borderRadius: BorderRadius.circular(AppSpacing.lg),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSpacing.lg),
        child: Container(
          constraints: const BoxConstraints(minHeight: 56),
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg + 4, vertical: AppSpacing.sm),
          child: Row(
            children: [
              Icon(icon, size: 20, color: AppColors.tealLighter),
              const SizedBox(width: AppSpacing.lg),
              if (value == null)
                Expanded(child: Text(label, style: tt.titleSmall))
              else ...[
                Text(label, style: tt.titleSmall),
                const SizedBox(width: AppSpacing.lg),
                Expanded(
                  child: Text(
                    value!,
                    textAlign: TextAlign.right,
                    overflow: TextOverflow.ellipsis,
                    style: tt.titleSmall!.copyWith(color: highlight ? AppColors.tealLighter : AppColors.textMuted),
                  ),
                ),
                const SizedBox(width: AppSpacing.xs),
                const Icon(Icons.chevron_right_rounded, color: AppColors.textMuted),
              ],
              ?trailing,
            ],
          ),
        ),
      ),
    );
  }
}

/// Vorschau des Tagesziels für das gewählte Datum.
class _Preview extends StatelessWidget {
  final DateTime examDate;
  final int remaining;

  const _Preview({required this.examDate, required this.remaining});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final exams = dailyExams(remaining, daysBetween(DateTime.now(), examDate));
    final note = tt.bodySmall!.copyWith(fontSize: 13, height: 1.5, color: AppColors.textSecondary);
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg + 4),
      decoration: BoxDecoration(
        color: AppColors.indigoSubtle,
        borderRadius: BorderRadius.circular(AppSpacing.lg),
        border: Border.all(color: AppColors.indigoBorder),
      ),
      child: Column(
        children: [
          Text('Dein Tagesziel', style: tt.bodySmall!.copyWith(color: AppColors.textMuted)),
          const SizedBox(height: AppSpacing.xs),
          Text('${examsLabel(exams)} am Tag', style: tt.headlineMedium!.copyWith(color: AppColors.tealLighter)),
          const SizedBox(height: AppSpacing.sm),
          Text(
            remaining > 0
                ? 'Je $examSize Fragen – so kannst du bis zum ${formatDayMonth(examDate)} alle $remaining offenen '
                    'Fragen sicher. Gerechnet mit 2 von 3 richtigen Antworten pro Prüfung.'
                : 'Alle Fragen sitzen – mit täglichem Üben bleibt es so.',
            style: note,
            textAlign: TextAlign.center,
          ),
          if (exams >= 4) ...[
            const SizedBox(height: AppSpacing.sm),
            Text(
              'Sportlich! Verteile die Prüfungen über den Tag.',
              style: tt.bodySmall!.copyWith(fontSize: 13, color: AppColors.amberLight),
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }
}

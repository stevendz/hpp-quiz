import 'package:flutter/material.dart';
import '../models/question.dart';
import '../services/report_service.dart';
import '../theme/app_theme.dart';

class ReportSheet extends StatefulWidget {
  final Question question;

  const ReportSheet({super.key, required this.question});

  static Future<void> show(BuildContext context, Question question) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.bgMid,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => ReportSheet(question: question),
    );
  }

  @override
  State<ReportSheet> createState() => _ReportSheetState();
}

class _ReportSheetState extends State<ReportSheet> {
  final TextEditingController _textController = TextEditingController();
  String? _reason;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final reason = _reason;
    if (reason == null) return;
    setState(() => _isSubmitting = true);

    // Vor dem await greifen, damit die Snackbar auch nach dem Schließen des Sheets läuft.
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);

    final success = await ReportService.submit(question: widget.question, reason: reason, text: _textController.text);
    if (!mounted) return;

    if (success) {
      navigator.pop();
      messenger.showSnackBar(const SnackBar(content: Text('Danke! Wir prüfen die Frage.')));
    } else {
      setState(() => _isSubmitting = false);
      messenger.showSnackBar(const SnackBar(content: Text('Meldung konnte nicht gesendet werden.')));
    }
  }

  OutlineInputBorder get _fieldBorder =>
      OutlineInputBorder(borderRadius: BorderRadius.circular(AppSpacing.lg), borderSide: BorderSide.none);

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final stem = widget.question.q.split('\n').first;

    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg * 2),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Frage melden', style: tt.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: AppSpacing.md),
              Text(
                '${widget.question.exam} · $stem',
                style: tt.bodySmall!.copyWith(color: AppColors.textMuted),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: AppSpacing.lg * 2),
              Wrap(
                spacing: AppSpacing.md,
                runSpacing: AppSpacing.md,
                alignment: WrapAlignment.center,
                children: [
                  for (final entry in ReportService.reasons.entries)
                    ChoiceChip(
                      label: Text(entry.value),
                      selected: _reason == entry.key,
                      onSelected: _isSubmitting ? null : (_) => setState(() => _reason = entry.key),
                      labelStyle: tt.titleSmall!.copyWith(color: _reason == entry.key ? Colors.white : AppColors.textSecondary),
                      selectedColor: AppColors.teal,
                      backgroundColor: AppColors.surfaceDark,
                      showCheckmark: false,
                      side: BorderSide(color: _reason == entry.key ? AppColors.teal : AppColors.indigoBorder),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
                    ),
                ],
              ),
              const SizedBox(height: AppSpacing.lg * 2),
              TextField(
                controller: _textController,
                enabled: !_isSubmitting,
                maxLines: 4,
                maxLength: ReportService.maxTextLength,
                style: tt.bodyMedium,
                decoration: InputDecoration(
                  hintText: 'Was ist dir aufgefallen? (optional)',
                  hintStyle: tt.bodyMedium?.copyWith(color: AppColors.textDim),
                  filled: true,
                  fillColor: AppColors.surfaceDark,
                  counterStyle: tt.bodySmall,
                  border: _fieldBorder,
                  enabledBorder: _fieldBorder,
                  focusedBorder: _fieldBorder,
                ),
              ),
              Text(
                'Deine Meldung wird anonym übermittelt. Bitte keine persönlichen Daten eingeben.',
                style: tt.bodySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSpacing.lg * 2),
              FilledButton(
                onPressed: _reason == null || _isSubmitting ? null : _submit,
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.teal,
                  disabledBackgroundColor: AppColors.surfaceDark,
                  padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg + 2),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
                ),
                child: _isSubmitting
                    ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                    : Text('Senden', style: tt.labelLarge),
              ),
              TextButton(
                onPressed: _isSubmitting ? null : () => Navigator.pop(context),
                child: Text('Abbrechen', style: tt.bodyMedium?.copyWith(color: AppColors.textMuted)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../services/feedback_service.dart';
import '../theme/app_theme.dart';

class FeedbackSheet extends StatefulWidget {
  const FeedbackSheet({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.bgMid,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => const FeedbackSheet(),
    );
  }

  @override
  State<FeedbackSheet> createState() => _FeedbackSheetState();
}

class _FeedbackSheetState extends State<FeedbackSheet> {
  final TextEditingController _textController = TextEditingController();
  bool? _satisfied;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final satisfied = _satisfied;
    if (satisfied == null) return;
    setState(() => _isSubmitting = true);

    // Vor dem await greifen, damit die Snackbar auch nach dem Schließen des Sheets läuft.
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);

    final success = await FeedbackService.submitFeedback(satisfied: satisfied, text: _textController.text);
    if (!mounted) return;

    if (success) {
      navigator.pop();
      messenger.showSnackBar(const SnackBar(content: Text('Danke für dein Feedback!')));
    } else {
      setState(() => _isSubmitting = false);
      messenger.showSnackBar(const SnackBar(content: Text('Feedback konnte nicht gesendet werden.')));
    }
  }

  Widget _thumbButton({required bool satisfied, required IconData icon}) {
    final isSelected = _satisfied == satisfied;
    return GestureDetector(
      onTap: _isSubmitting ? null : () => setState(() => _satisfied = satisfied),
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.lg + 4),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.indigoSubtle : AppColors.surfaceDark,
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? AppColors.teal : Colors.transparent, width: 2),
        ),
        child: Icon(icon, size: 30, color: isSelected ? AppColors.tealLighter : AppColors.textMuted),
      ),
    );
  }

  OutlineInputBorder get _fieldBorder =>
      OutlineInputBorder(borderRadius: BorderRadius.circular(AppSpacing.lg), borderSide: BorderSide.none);

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg * 2),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Wie gefällt dir der HPP Prüfungstrainer?', style: tt.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: AppSpacing.lg * 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _thumbButton(satisfied: true, icon: Icons.thumb_up_rounded),
                  const SizedBox(width: AppSpacing.lg * 2),
                  _thumbButton(satisfied: false, icon: Icons.thumb_down_rounded),
                ],
              ),
              const SizedBox(height: AppSpacing.lg * 2),
              TextField(
                controller: _textController,
                enabled: !_isSubmitting,
                maxLines: 4,
                maxLength: FeedbackService.maxFeedbackLength,
                style: tt.bodyMedium,
                decoration: InputDecoration(
                  hintText: 'Was können wir verbessern? (optional)',
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
                'Dein Feedback wird anonym übermittelt. Bitte keine persönlichen Daten eingeben.',
                style: tt.bodySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSpacing.lg * 2),
              FilledButton(
                onPressed: _satisfied == null || _isSubmitting ? null : _submit,
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.teal,
                  disabledBackgroundColor: AppColors.surfaceDark,
                  padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg + 2),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.lg)),
                ),
                child: _isSubmitting
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                      )
                    : Text('Senden', style: tt.labelLarge),
              ),
              TextButton(
                onPressed: _isSubmitting ? null : () => Navigator.pop(context),
                child: Text('Jetzt nicht', style: tt.bodyMedium?.copyWith(color: AppColors.textMuted)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

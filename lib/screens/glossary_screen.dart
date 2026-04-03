import 'package:flutter/material.dart';
import '../data/glossary_data.dart';
import '../theme/app_theme.dart';

class GlossaryScreen extends StatefulWidget {
  final VoidCallback onGoHome;

  const GlossaryScreen({super.key, required this.onGoHome});

  @override
  State<GlossaryScreen> createState() => _GlossaryScreenState();
}

class _GlossaryScreenState extends State<GlossaryScreen> {
  String _search = '';

  List<MapEntry<String, String>> get _filteredEntries {
    final entries = glossary.entries.toList()..sort((a, b) => a.key.toLowerCase().compareTo(b.key.toLowerCase()));
    if (_search.isEmpty) return entries;
    final q = _search.toLowerCase();
    return entries.where((e) => e.key.toLowerCase().contains(q) || e.value.toLowerCase().contains(q)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final entries = _filteredEntries;

    return Container(
      decoration: const BoxDecoration(gradient: AppColors.gradientBg),
      child: SafeArea(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: AppSpacing.lg),
              child: Row(
                children: [
                  IconButton(
                    onPressed: widget.onGoHome,
                    icon: const Icon(Icons.arrow_back_rounded, color: AppColors.textMuted),
                  ),
                  Expanded(
                    child: Text('Glossar', textAlign: TextAlign.center, style: tt.titleMedium),
                  ),
                  const SizedBox(width: 48),
                ],
              ),
            ),
            // Search field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: TextField(
                onChanged: (v) => setState(() => _search = v),
                style: tt.bodyMedium,
                decoration: InputDecoration(
                  hintText: 'Begriff suchen…',
                  hintStyle: tt.bodyMedium?.copyWith(color: AppColors.textDim),
                  prefixIcon: const Icon(Icons.search_rounded, color: AppColors.textDim),
                  filled: true,
                  fillColor: AppColors.surfaceDark,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSpacing.lg),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            // Count
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('${entries.length} Begriffe', style: tt.bodySmall?.copyWith(color: AppColors.textDim)),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            // List
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                itemCount: entries.length,
                separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.md),
                itemBuilder: (_, i) {
                  final entry = entries[i];
                  return Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(AppSpacing.lg),
                    decoration: BoxDecoration(
                      color: AppColors.indigoSubtle,
                      borderRadius: BorderRadius.circular(AppSpacing.lg),
                      border: Border.all(color: AppColors.indigoBorder.withValues(alpha: 0.3)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(entry.key, style: tt.titleSmall),
                        const SizedBox(height: 2),
                        Text(entry.value, style: tt.bodyMedium?.copyWith(color: AppColors.textMuted)),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

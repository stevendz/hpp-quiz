import 'dart:ui';
import 'package:flutter/material.dart';
import '../services/storage_service.dart';
import '../theme/app_theme.dart';

class StatsScreen extends StatelessWidget {
  final List<ExamRecord> examHistory;
  final VoidCallback onGoHome;

  const StatsScreen({super.key, required this.examHistory, required this.onGoHome});

  String _formatDuration(int totalSeconds) {
    final m = totalSeconds ~/ 60;
    final s = totalSeconds % 60;
    return '${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')} min';
  }

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

    return Container(
      decoration: const BoxDecoration(gradient: AppColors.gradientBg),
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: AppSpacing.lg),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSpacing.lg),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 520),
                  decoration: BoxDecoration(
                    color: AppColors.cardBg,
                    borderRadius: BorderRadius.circular(AppSpacing.lg),
                    border: Border.all(color: AppColors.indigoBorder.withValues(alpha: 0.15)),
                    boxShadow: const [BoxShadow(color: Color(0x4D000000), blurRadius: 32, offset: Offset(0, 8))],
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.lg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: onGoHome,
                        child: Text('← Zurück', style: tt.titleSmall!.copyWith(color: const Color(0xFFA5B4FC))),
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      Text('Prüfungsverlauf', style: tt.headlineMedium),
                      const SizedBox(height: AppSpacing.lg),
                      if (examHistory.isEmpty)
                        Text('Noch keine Prüfungen absolviert.', style: tt.bodySmall)
                      else
                        ...examHistory.reversed.toList().asMap().entries.map((entry) {
                          final i = entry.key;
                          final ex = entry.value;
                          final p = (ex.score / ex.total * 100).round();
                          final pass = p >= 75;
                          final examNum = examHistory.length - i;

                          String dateStr = '';
                          try {
                            final dt = DateTime.parse(ex.date);
                            dateStr =
                                '${dt.day.toString().padLeft(2, '0')}.${dt.month.toString().padLeft(2, '0')}.${dt.year} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
                          } catch (_) {
                            dateStr = ex.date;
                          }

                          return Padding(
                            padding: const EdgeInsets.only(bottom: AppSpacing.md),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.lg),
                              decoration: BoxDecoration(
                                color: const Color(0x66334155),
                                borderRadius: BorderRadius.circular(AppSpacing.lg),
                                border: Border(
                                  left: BorderSide(color: pass ? AppColors.green : AppColors.red, width: 4),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Prüfung $examNum', style: tt.titleSmall),
                                      const SizedBox(height: 2),
                                      Text(dateStr, style: tt.bodySmall),
                                      if (ex.elapsedSeconds > 0) ...[
                                        const SizedBox(height: 2),
                                        Text(
                                          '⏱ ${_formatDuration(ex.elapsedSeconds)}',
                                          style: tt.bodySmall!.copyWith(color: AppColors.textMuted),
                                        ),
                                      ],
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '$p%',
                                        style: tt.titleMedium!.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: pass ? AppColors.green : AppColors.red,
                                        ),
                                      ),
                                      Text(
                                        '${ex.score}/${ex.total}',
                                        style: tt.bodySmall!.copyWith(color: AppColors.textMuted),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import '../models/question.dart';
import '../services/exam_modes.dart';
import '../theme/app_theme.dart';
import 'question_actions.dart';
import 'question_widgets.dart';
import 'report_sheet.dart';

/// Merkliste: alle gemerkten Fragen mit Lösung und Erklärung. Das Lesezeichen wählt eine Frage ab.
class BookmarksScreen extends StatefulWidget {
  final Set<int> bookmarks;
  final ValueChanged<int> onToggleBookmark;
  final VoidCallback onGoBack;

  const BookmarksScreen({super.key, required this.bookmarks, required this.onToggleBookmark, required this.onGoBack});

  @override
  State<BookmarksScreen> createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  // Die beim Öffnen gemerkten Fragen bleiben stehen: Abgewählte werden ausgegraut und lassen sich wieder markieren.
  late final _items = bookmarkedQuestions(widget.bookmarks);
  final _expanded = <int>{};

  void _toggle(int id) => setState(() => _expanded.contains(id) ? _expanded.remove(id) : _expanded.add(id));

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final count = widget.bookmarks.length;

    return Container(
      // füllt den ganzen Bildschirm, auch wenn die Liste kürzer ist
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(gradient: AppColors.gradientBg),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: AppSpacing.lg),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _GlassCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: widget.onGoBack,
                          child: Text('← Zurück', style: tt.titleSmall!.copyWith(color: const Color(0xFFA5B4FC))),
                        ),
                        const SizedBox(height: AppSpacing.lg),
                        Text('Merkliste', style: tt.headlineMedium),
                        const SizedBox(height: AppSpacing.xs),
                        Text(count == 1 ? '1 gemerkte Frage' : '$count gemerkte Fragen', style: tt.bodySmall),
                        if (_items.isEmpty) ...[
                          const SizedBox(height: AppSpacing.lg),
                          Text(
                            'Tippe bei einer Frage auf das Lesezeichen, um sie hier zu sammeln – beim Üben, am Prüfungstag oder in der Auswertung.',
                            style: tt.bodyMedium!.copyWith(color: AppColors.textMuted),
                          ),
                        ],
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  for (final item in _items)
                    Padding(
                      padding: const EdgeInsets.only(bottom: AppSpacing.md),
                      child: _BookmarkTile(
                        question: item.question,
                        number: item.number,
                        bookmarked: widget.bookmarks.contains(item.question.id),
                        expanded: _expanded.contains(item.question.id),
                        onToggle: () => _toggle(item.question.id),
                        onToggleBookmark: () => widget.onToggleBookmark(item.question.id),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GlassCard extends StatelessWidget {
  final Widget child;

  const _GlassCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSpacing.lg),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.cardBg,
            borderRadius: BorderRadius.circular(AppSpacing.lg),
            border: Border.all(color: AppColors.indigoBorder.withValues(alpha: 0.15)),
            boxShadow: const [BoxShadow(color: Color(0x4D000000), blurRadius: 32, offset: Offset(0, 8))],
          ),
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: child,
        ),
      ),
    );
  }
}

class _BookmarkTile extends StatelessWidget {
  final Question question;
  final int number;
  final bool bookmarked;
  final bool expanded;
  final VoidCallback onToggle;
  final VoidCallback onToggleBookmark;

  const _BookmarkTile({
    required this.question,
    required this.number,
    required this.bookmarked,
    required this.expanded,
    required this.onToggle,
    required this.onToggleBookmark,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final lineBreak = question.q.indexOf('\n');
    final stem = lineBreak == -1 ? question.q : question.q.substring(0, lineBreak);

    return AnimatedOpacity(
      opacity: bookmarked ? 1 : 0.5,
      duration: const Duration(milliseconds: 200),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cardBg,
          borderRadius: BorderRadius.circular(AppSpacing.lg),
          border: Border.all(color: AppColors.indigoBorder),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onToggle,
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${question.exam.toUpperCase()} · FRAGE $number', style: tt.labelSmall),
                          const SizedBox(height: 2),
                          Text(
                            stem,
                            style: tt.titleSmall,
                            maxLines: expanded ? null : 2,
                            overflow: expanded ? TextOverflow.visible : TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    QuestionIconButton(
                      icon: bookmarked ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
                      tooltip: bookmarked ? 'Aus Merkliste entfernen' : 'Frage merken',
                      color: bookmarked ? AppColors.amberLight : AppColors.tealLighter,
                      onTap: onToggleBookmark,
                    ),
                    const SizedBox(width: AppSpacing.xs),
                    AnimatedRotation(
                      turns: expanded ? 0.5 : 0,
                      duration: const Duration(milliseconds: 200),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Icon(Icons.expand_more_rounded, color: AppColors.textMuted),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 200),
              alignment: Alignment.topCenter,
              child: !expanded
                  ? const SizedBox(width: double.infinity)
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(AppSpacing.lg, 0, AppSpacing.lg, AppSpacing.lg),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          if (lineBreak != -1) ...[
                            Text(question.q.substring(lineBreak + 1), style: tt.bodyMedium!.copyWith(height: 1.5)),
                            const SizedBox(height: AppSpacing.lg),
                          ],
                          for (var i = 0; i < question.options.length; i++)
                            Padding(
                              padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                              child: OptionButton(
                                index: i,
                                text: question.options[i],
                                isMultiple: question.isMultiple,
                                isSelected: false,
                                answered: true,
                                isCorrectOption: question.correctIndices.contains(i),
                                onTap: () {},
                              ),
                            ),
                          Container(
                            margin: const EdgeInsets.only(top: AppSpacing.sm),
                            padding: const EdgeInsets.all(AppSpacing.lg),
                            decoration: BoxDecoration(
                              color: AppColors.indigoSubtle,
                              border: Border.all(color: AppColors.indigoBorder),
                              borderRadius: BorderRadius.circular(AppSpacing.lg),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Erklärung', style: tt.labelMedium!.copyWith(color: AppColors.tealLighter)),
                                const SizedBox(height: AppSpacing.sm),
                                Text(question.explanation, style: tt.bodyMedium!.copyWith(height: 1.65, color: const Color(0xFFCBD5E1))),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSpacing.md),
                          Align(
                            alignment: Alignment.centerRight,
                            child: QuestionIconButton(
                              icon: Icons.flag_outlined,
                              tooltip: 'Frage melden',
                              onTap: () => ReportSheet.show(context, question),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

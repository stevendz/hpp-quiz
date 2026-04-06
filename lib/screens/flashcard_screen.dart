import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/flashcard.dart';
import '../data/flashcards_data.dart';
import '../theme/app_theme.dart';

class FlashcardScreen extends StatefulWidget {
  final Set<String> selectedTags;
  final VoidCallback onGoHome;

  const FlashcardScreen({super.key, required this.selectedTags, required this.onGoHome});

  static Future<void> resetRemovedCards() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('flashcard-removed');
    await prefs.remove('flashcard-index');
  }

  @override
  State<FlashcardScreen> createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
  static const _indexKey = 'flashcard-index';
  static const _removedKey = 'flashcard-removed';

  late List<Flashcard> _cards;
  List<int> _originalIndices = [];
  Set<int> _removedIndices = {};
  int _currentIndex = 0;
  DateTime _cardStartTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _cards = [];
    _loadState();
  }

  Future<void> _loadState() async {
    final prefs = await SharedPreferences.getInstance();
    final removedList = prefs.getStringList(_removedKey) ?? [];
    _removedIndices = removedList.map((s) => int.parse(s)).toSet();

    final filteredCards = <Flashcard>[];
    final filteredIndices = <int>[];
    for (int i = 0; i < allFlashcards.length; i++) {
      if (_removedIndices.contains(i)) continue;
      final card = allFlashcards[i];
      if (card.tags.any((t) => widget.selectedTags.contains(t))) {
        filteredCards.add(card);
        filteredIndices.add(i);
      }
    }

    final savedIndex = prefs.getInt(_indexKey) ?? 0;
    setState(() {
      _cards = filteredCards;
      _originalIndices = filteredIndices;
      _currentIndex = _cards.isEmpty ? 0 : savedIndex.clamp(0, _cards.length - 1);
    });
  }

  Future<void> _saveIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_indexKey, index);
  }

  Future<void> _persistRemoved() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_removedKey, _removedIndices.map((i) => i.toString()).toList());
  }

  void _logFlashcard(String action) {
    if (_cards.isEmpty) return;
    final duration = DateTime.now().difference(_cardStartTime).inSeconds;
    final cardIndex = _originalIndices[_currentIndex];
    final params = {'card_index': cardIndex, 'action': action, 'duration_seconds': duration};
    debugPrint('[Analytics] flashcard_viewed: $params');
    FirebaseAnalytics.instance.logEvent(name: 'flashcard_viewed', parameters: params);
    _cardStartTime = DateTime.now();
  }

  void _goToNext() {
    if (_cards.isEmpty) return;
    _logFlashcard('next');
    final next = _currentIndex < _cards.length - 1 ? _currentIndex + 1 : 0;
    setState(() => _currentIndex = next);
    _saveIndex(next);
  }

  void _goToPrevious() {
    if (_cards.isEmpty) return;
    if (_currentIndex > 0) {
      _logFlashcard('previous');
      setState(() => _currentIndex--);
      _saveIndex(_currentIndex);
    }
  }

  Future<void> _removeCurrentCard() async {
    if (_cards.isEmpty) return;
    _logFlashcard('removed');

    final originalIdx = _originalIndices[_currentIndex];
    _removedIndices.add(originalIdx);
    await _persistRemoved();

    setState(() {
      _cards.removeAt(_currentIndex);
      _originalIndices.removeAt(_currentIndex);
      if (_cards.isEmpty) return;
      if (_currentIndex >= _cards.length) {
        _currentIndex = 0;
      }
    });
    if (_cards.isNotEmpty) _saveIndex(_currentIndex);
  }

  void _handleGoHome() {
    _logFlashcard('exit');
    widget.onGoHome();
  }

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

    if (_cards.isEmpty) {
      return Container(
        decoration: const BoxDecoration(gradient: AppColors.gradientBg),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('📭', style: TextStyle(fontSize: 48)),
                  const SizedBox(height: AppSpacing.lg),
                  Text('Alle Lernkarten entfernt', style: tt.headlineMedium, textAlign: TextAlign.center),
                  const SizedBox(height: AppSpacing.md),
                  Text(
                    'Setze die Lernkarten im Profil zurück.',
                    style: tt.bodyMedium?.copyWith(color: AppColors.textMuted),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  TextButton.icon(
                    onPressed: _handleGoHome,
                    icon: const Icon(Icons.arrow_back_rounded, color: AppColors.textMuted),
                    label: Text('Zurück', style: tt.titleSmall!.copyWith(color: AppColors.textMuted)),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    final card = _cards[_currentIndex];

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
                    onPressed: _handleGoHome,
                    icon: const Icon(Icons.arrow_back_rounded, color: AppColors.textMuted),
                  ),
                  Expanded(
                    child: Text('Lernkarten', textAlign: TextAlign.center, style: tt.titleMedium),
                  ),
                  const SizedBox(width: 48),
                ],
              ),
            ),
            // Progress
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: Column(
                children: [
                  Text(
                    '${_currentIndex + 1} / ${_cards.length}',
                    style: tt.titleSmall!.copyWith(color: AppColors.textMuted),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppSpacing.xs),
                    child: LinearProgressIndicator(
                      value: (_currentIndex + 1) / _cards.length,
                      backgroundColor: AppColors.surfaceDark,
                      valueColor: const AlwaysStoppedAnimation<Color>(AppColors.amber),
                      minHeight: 4,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            // Card
            Expanded(
              child: GestureDetector(
                onHorizontalDragEnd: (details) {
                  final v = details.velocity.pixelsPerSecond.dx;
                  if (v < -100) {
                    _goToNext();
                  } else if (v > 100) {
                    _goToPrevious();
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSpacing.lg),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.cardBg,
                          borderRadius: BorderRadius.circular(AppSpacing.lg),
                          border: Border.all(color: AppColors.indigoBorder.withValues(alpha: 0.2)),
                          boxShadow: const [BoxShadow(color: Color(0x4D000000), blurRadius: 32, offset: Offset(0, 8))],
                        ),
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.all(AppSpacing.lg),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (card.tags.isNotEmpty) ...[
                                Wrap(
                                  spacing: AppSpacing.xs,
                                  runSpacing: AppSpacing.xs,
                                  children: card.tags.map((tag) => Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: AppColors.indigoSubtle,
                                      borderRadius: BorderRadius.circular(AppSpacing.md),
                                      border: Border.all(color: AppColors.indigoBorder.withValues(alpha: 0.3)),
                                    ),
                                    child: Text(tag, style: tt.labelSmall?.copyWith(color: AppColors.textMuted)),
                                  )).toList(),
                                ),
                                const SizedBox(height: AppSpacing.md),
                              ],
                              Text(card.text, style: tt.bodyMedium),
                              if (card.terms.isNotEmpty) ...[
                                const SizedBox(height: AppSpacing.lg),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(AppSpacing.lg),
                                  decoration: BoxDecoration(
                                    color: AppColors.indigoSubtle,
                                    borderRadius: BorderRadius.circular(AppSpacing.lg),
                                    border: Border.all(color: AppColors.indigoBorder.withValues(alpha: 0.3)),
                                  ),
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: card.terms.length,
                                    separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.lg),
                                    itemBuilder: (_, i) {
                                      final t = card.terms[i];
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(t.term, style: tt.titleSmall),
                                          if (t.definition.isNotEmpty) ...[
                                            const SizedBox(height: 2),
                                            Text(t.definition, style: tt.bodyMedium?.copyWith(color: AppColors.textMuted)),
                                          ],
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Navigation buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.lg),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _NavButton(icon: Icons.chevron_left_rounded, onPressed: _currentIndex > 0 ? _goToPrevious : null),
                  _NavButton(icon: Icons.delete_outline_rounded, onPressed: _removeCurrentCard),
                  _NavButton(icon: Icons.chevron_right_rounded, onPressed: _goToNext),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const _NavButton({required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final enabled = onPressed != null;
    final color = (enabled ? AppColors.textPrimary : AppColors.textDark);
    final bgColor = (enabled ? AppColors.surfaceDark : AppColors.surfaceDark.withValues(alpha: 0.3));

    return Container(
      decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(AppSpacing.lg)),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color, size: 28),
      ),
    );
  }
}

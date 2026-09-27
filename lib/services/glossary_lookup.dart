import '../data/glossary_data.dart';

final _letter = RegExp(r'[a-zäöüß]');

/// Findet Glossarbegriffe (inkl. [glossaryAliases]) in [text]. Liegt ein Treffer
/// vollständig in einem längeren, wird er ignoriert – z. B. „Neurose“ in „Herzneurose“.
/// Abkürzungen (ohne Kleinbuchstaben, z. B. „HP“) zählen nur als ganzes Wort.
List<MapEntry<String, String>> findGlossaryTerms(String text) {
  final lower = text.toLowerCase();
  final candidates = <(String, String, bool)>[
    for (final key in glossary.keys) (key.toLowerCase(), key, _isAbbreviation(key)),
    for (final alias in glossaryAliases.entries)
      if (glossary.containsKey(alias.value))
        (alias.key.toLowerCase(), alias.value, _isAbbreviation(alias.key)),
  ]..sort((a, b) => b.$1.length.compareTo(a.$1.length));

  final taken = <(int, int)>[];
  final keys = <String>{};
  for (final (pattern, key, wholeWord) in candidates) {
    for (var start = lower.indexOf(pattern); start != -1; start = lower.indexOf(pattern, start + 1)) {
      final s = start, e = start + pattern.length;
      if (wholeWord && (_isLetterAt(lower, s - 1) || _isLetterAt(lower, e))) continue;
      if (taken.any((t) => s >= t.$1 && e <= t.$2)) continue;
      taken.add((s, e));
      keys.add(key);
    }
  }
  return [for (final key in keys) MapEntry(key, glossary[key]!)]
    ..sort((a, b) => a.key.toLowerCase().compareTo(b.key.toLowerCase()));
}

bool _isAbbreviation(String term) => term == term.toUpperCase();

bool _isLetterAt(String s, int i) => i >= 0 && i < s.length && _letter.hasMatch(s[i]);

class Flashcard {
  final String text;
  final List<String> tags;

  const Flashcard({
    required this.text,
    this.tags = const [],
  });

  /// Erste Zeile der Karte – stabiler Schlüssel, unabhängig von der Position in der Liste.
  String get title => text.split('\n').first;
}

class Flashcard {
  final String text;
  final List<String> tags;

  const Flashcard({
    required this.text,
    this.tags = const [],
  });
}

class Term {
  final String term;
  final String definition;

  const Term({
    required this.term,
    required this.definition,
  });
}

class Flashcard {
  final String text;
  final List<String> terms;

  const Flashcard({
    required this.text,
    this.terms = const [],
  });
}

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
  final List<Term> terms;
  final List<String> tags;

  const Flashcard({
    required this.text,
    this.terms = const [],
    this.tags = const [],
  });
}

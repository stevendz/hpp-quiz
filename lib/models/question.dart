class Question {
  final int id;
  final String exam;
  final String q;
  final List<String> options;
  final dynamic correct; // int for single/combination, List<int> for multiple
  final String explanation;

  const Question({
    required this.id,
    required this.exam,
    required this.q,
    required this.options,
    required this.correct,
    required this.explanation,
  });

  bool get isMultiple => correctIndices.length > 1;
  bool get isSingle => !isMultiple;

  /// The correct answer index for single/combination questions.
  int get correctIndex {
    if (correct is List) return (correct as List).first as int;
    return correct as int;
  }

  List<int> get correctIndices {
    if (correct is List) {
      return (correct as List).cast<int>();
    }
    return [correct as int];
  }
}

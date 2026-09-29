import 'dart:math';
import '../data/all_questions.dart';
import '../models/question.dart';
import 'storage_service.dart';

/// Übungsprüfung: 28 gemischte Fragen wie in der echten Prüfung.
const int examSize = 28;

/// Sind alle Fragen schon einmal beantwortet, besteht eine Übungsprüfung aus bis zu 23 offenen Fehlern,
/// der Rest aus bereits sicheren Fragen.
const int reviewWrong = 23;

/// Prüfungstag: eine vergangene Prüfung mit 28 Fragen in 55 Minuten, bestanden ab 75 %.
const int examDaySeconds = 55 * 60;
const double passRatio = 0.75;

/// Mindestanzahl richtiger Antworten zum Bestehen (28 Fragen → 21; ältere Übungsprüfungen mit 30 Fragen → 23).
int passMark(int total) => (total * passRatio).ceil();

const _monthOrder = {'März': 3, 'Oktober': 10};

/// Alle Prüfungstermine der Fragensammlung, neueste zuerst („März 2026“, „Oktober 2025“, …).
List<String> pastExamLabels() {
  int sortKey(String label) {
    final parts = label.split(' ');
    return (int.tryParse(parts.last) ?? 0) * 100 + (_monthOrder[parts.first] ?? 0);
  }

  return {for (final q in allQuestions) q.exam}.toList()..sort((a, b) => sortKey(b).compareTo(sortKey(a)));
}

/// Die Fragen eines Prüfungstermins in ihrer ursprünglichen Reihenfolge.
List<int> examDayQuestionIds(String label) => [
      for (final q in allQuestions)
        if (q.exam == label) q.id,
    ];

bool isAnswerCorrect(Question question, List<int> selected) {
  final a = [...selected]..sort();
  final b = [...question.correctIndices]..sort();
  return a.length == b.length && List.generate(a.length, (i) => a[i] == b[i]).every((v) => v);
}

/// Falsch beantwortete (noch nicht wieder sichere) und gemerkte Fragen.
List<int> reviewCandidateIds(QuizState state) {
  final ids = <int>{};
  for (final q in allQuestions) {
    final s = state.questionStats[q.id];
    final wrong = s != null && s.attempts > 0 && !s.lastCorrect;
    if (wrong || state.bookmarks.contains(q.id)) ids.add(q.id);
  }
  return ids.toList();
}

/// Eine Wiederholungsrunde aus Fehlern und Merkliste, gemischt, höchstens [limit] Fragen.
List<int> generateReview(QuizState state, {int limit = 30, Random? random}) {
  final ids = reviewCandidateIds(state)..shuffle(random ?? Random());
  return ids.take(limit).toList();
}

/// Gemerkte Fragen mit ihrer Nummer im Prüfungstermin, neueste Prüfung zuerst, innerhalb eines Termins in Originalreihenfolge.
List<({Question question, int number})> bookmarkedQuestions(Set<int> bookmarks) {
  final byId = {for (final q in allQuestions) q.id: q};
  return [
    for (final label in pastExamLabels())
      for (final (i, id) in examDayQuestionIds(label).indexed)
        if (bookmarks.contains(id)) (question: byId[id]!, number: i + 1),
  ];
}

/// Letztes Ergebnis eines Prüfungstermins im Prüfungstag-Modus.
ExamRecord? lastExamDayRecord(QuizState state, String label) {
  for (final r in state.examHistory.reversed) {
    if (r.mode == ExamMode.examDay && r.examLabel == label) return r;
  }
  return null;
}

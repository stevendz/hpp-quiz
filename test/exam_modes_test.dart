import 'dart:convert';
import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:hpp_quiz/data/all_questions.dart';
import 'package:hpp_quiz/models/question.dart';
import 'package:hpp_quiz/services/exam_modes.dart';
import 'package:hpp_quiz/services/storage_service.dart';

QuestionStats _answered(List<bool> results) =>
    results.fold(QuestionStats(), (stats, correct) => stats.afterAnswer(correct));

QuizState _state({Map<int, QuestionStats>? stats, Set<int>? bookmarks}) =>
    QuizState.defaultState().copyWith(questionStats: stats, bookmarks: bookmarks);

void main() {
  group('Prüfungstag', () {
    test('kennt alle 20 Prüfungstermine, neueste zuerst', () {
      final labels = pastExamLabels();
      expect(labels, hasLength(20));
      expect(labels.first, 'März 2026');
      expect(labels[1], 'Oktober 2025');
      expect(labels.last, 'März 2016');
      expect(labels, isNot(contains('März 2020')));
    });

    test('jeder Termin hat 28 Fragen in Originalreihenfolge', () {
      for (final label in pastExamLabels()) {
        final ids = examDayQuestionIds(label);
        expect(ids, hasLength(28), reason: label);
        expect(ids, [...ids]..sort(), reason: label);
      }
      final march2025 = examDayQuestionIds('März 2025');
      expect(march2025.first, 20251);
      expect(march2025.last, 202528);
      expect(examDayQuestionIds('Oktober 2025').first, 202529);
    });

    test('bestanden ab 75 %', () {
      expect(passMark(28), 21);
      expect(passMark(30), 23);
      expect(examDaySeconds, 55 * 60);
    });

    test('Merkliste: neueste Prüfung zuerst, Fragennummer im Termin', () {
      final items = bookmarkedQuestions({20251, 202530, 20261, 20162});
      expect(items.map((e) => e.question.id), [20261, 202530, 20251, 20162]);
      expect(items.map((e) => '${e.question.exam} ${e.number}'), ['März 2026 1', 'Oktober 2025 2', 'März 2025 1', 'März 2016 2']);
      expect(bookmarkedQuestions({}), isEmpty);
    });

    test('letztes Ergebnis je Termin', () {
      ExamRecord record(String label, int score, {String mode = ExamMode.examDay}) =>
          ExamRecord(date: '2026-09-01T10:00:00', score: score, total: 28, mode: mode, examLabel: label);
      final state = QuizState.defaultState().copyWith(examHistory: [
        record('März 2025', 18),
        record('Oktober 2024', 25),
        record('März 2025', 22),
        record('März 2024', 27, mode: ExamMode.practice),
      ]);
      expect(lastExamDayRecord(state, 'März 2025')?.score, 22);
      expect(lastExamDayRecord(state, 'Oktober 2024')?.score, 25);
      expect(lastExamDayRecord(state, 'März 2024'), isNull);
    });
  });

  group('Auswertung einer Antwort', () {
    const single = Question(id: 1, exam: 'Test', q: '?', options: ['A', 'B', 'C'], correct: 1, explanation: '');
    const multiple = Question(id: 2, exam: 'Test', q: '?', options: ['A', 'B', 'C', 'D'], correct: [0, 2], explanation: '');

    test('Einfachauswahl', () {
      expect(isAnswerCorrect(single, [1]), isTrue);
      expect(isAnswerCorrect(single, [0]), isFalse);
      expect(isAnswerCorrect(single, []), isFalse);
      expect(isAnswerCorrect(single, [0, 1]), isFalse);
    });

    test('Mehrfachauswahl unabhängig von der Reihenfolge', () {
      expect(isAnswerCorrect(multiple, [0, 2]), isTrue);
      expect(isAnswerCorrect(multiple, [2, 0]), isTrue);
      expect(isAnswerCorrect(multiple, [0]), isFalse);
      expect(isAnswerCorrect(multiple, [0, 1, 2]), isFalse);
    });

    test('jede Frage ist mit ihrer eigenen Lösung richtig', () {
      for (final q in allQuestions) {
        expect(isAnswerCorrect(q, q.correctIndices), isTrue, reason: '${q.id}');
      }
    });
  });

  group('Lernstand', () {
    test('beim ersten Versuch richtig gilt als sicher', () {
      final s = _answered([true]);
      expect(s.lastCorrect, isTrue);
      expect(s.attempts, 1);
      expect(s.correctCount, 1);
    });

    test('nach einem Fehler erst mit zwei richtigen Antworten in Folge wieder sicher', () {
      expect(_answered([false]).lastCorrect, isFalse);
      expect(_answered([false, true]).lastCorrect, isFalse);
      expect(_answered([false, true, true]).lastCorrect, isTrue);
      expect(_answered([false, true, false, true]).lastCorrect, isFalse);
      expect(_answered([true, true, true]).lastCorrect, isTrue);
      expect(_answered([false, true, true]).correctCount, 2);
    });
  });

  group('Fehler & Merkliste', () {
    final ids = allQuestions.map((q) => q.id).toList();

    test('enthält offene Fehler und gemerkte Fragen, ohne Doppelte', () {
      final state = _state(
        stats: {
          ids[0]: _answered([false]),
          ids[1]: _answered([true]),
          ids[2]: _answered([false, true]),
          ids[3]: _answered([false, true, true]),
        },
        bookmarks: {ids[0], ids[1], ids[10]},
      );
      expect(reviewCandidateIds(state).toSet(), {ids[0], ids[1], ids[2], ids[10]});
      expect(reviewCandidateIds(state), hasLength(4));
    });

    test('leer ohne Fehler und Merkliste', () {
      expect(reviewCandidateIds(QuizState.defaultState()), isEmpty);
      expect(generateReview(_state(stats: {ids[0]: _answered([true])})), isEmpty);
    });

    test('Runde ist auf das Limit begrenzt', () {
      final state = _state(stats: {for (final id in ids.take(40)) id: _answered([false])});
      final round = generateReview(state, limit: 30, random: Random(1));
      expect(round, hasLength(30));
      expect(round.toSet(), hasLength(30));
      expect(ids.take(40).toSet().containsAll(round), isTrue);
      expect(generateReview(_state(bookmarks: {ids[5], ids[6]})), hasLength(2));
    });
  });

  group('Speicherstand', () {
    test('neue Felder überstehen Speichern und Laden', () {
      final state = QuizState(
        questionStats: {20251: _answered([false, true])},
        currentExam: ExamState(
          questionIds: [20251, 20252],
          currentIndex: 1,
          answers: {20251: AnswerRecord(selected: [0, 1], correct: true)},
          elapsedSeconds: 125,
          mode: ExamMode.examDay,
          examLabel: 'März 2025',
          timeLimitSeconds: examDaySeconds,
        ),
        examHistory: [
          ExamRecord(
            date: '2026-09-01T10:00:00',
            score: 20,
            total: 28,
            mode: ExamMode.examDay,
            examLabel: 'Oktober 2024',
            timedOut: true,
          ),
        ],
        bookmarks: {202528, 20251},
      );

      final loaded = QuizState.fromJson(jsonDecode(jsonEncode(state.toJson())));
      expect(loaded.bookmarks, {20251, 202528});
      expect(loaded.questionStats[20251]!.correctStreak, 1);
      final exam = loaded.currentExam!;
      expect(exam.mode, ExamMode.examDay);
      expect(exam.examLabel, 'März 2025');
      expect(exam.timeLimitSeconds, examDaySeconds);
      expect(exam.currentIndex, 1);
      expect(exam.elapsedSeconds, 125);
      expect(exam.answers[20251]!.selected, [0, 1]);
      final record = loaded.examHistory.single;
      expect(record.mode, ExamMode.examDay);
      expect(record.examLabel, 'Oktober 2024');
      expect(record.timedOut, isTrue);
    });

    test('alter Speicherstand ohne neue Felder lässt sich laden', () {
      final loaded = QuizState.fromJson(jsonDecode('''
        {
          "questionStats": {"20251": {"attempts": 2, "correctCount": 1, "lastCorrect": false, "correctStreak": 0}},
          "currentExam": {"questionIds": [20251, 20252], "currentIndex": 0, "answers": {}, "score": 0, "elapsedSeconds": 10},
          "examHistory": [{"date": "2025-01-01T10:00:00", "score": 25, "total": 30, "elapsedSeconds": 900}]
        }
      '''));
      expect(loaded.bookmarks, isEmpty);
      expect(loaded.currentExam!.mode, ExamMode.practice);
      expect(loaded.currentExam!.examLabel, isNull);
      expect(loaded.currentExam!.timeLimitSeconds, isNull);
      expect(loaded.examHistory.single.mode, ExamMode.practice);
      expect(loaded.examHistory.single.timedOut, isFalse);
      expect(reviewCandidateIds(loaded), [20251]);
    });

    test('copyWith behält Merkliste und Prüfungsart', () {
      final exam = ExamState(questionIds: [1, 2], answers: {}, mode: ExamMode.review);
      final state = _state(bookmarks: {7}).copyWith(currentExam: exam);
      expect(state.copyWith(examHistory: []).bookmarks, {7});
      expect(state.copyWith(clearCurrentExam: true).currentExam, isNull);
      expect(state.copyWith(clearCurrentExam: true).bookmarks, {7});
      final moved = exam.copyWith(currentIndex: 1, elapsedSeconds: 42);
      expect(moved.mode, ExamMode.review);
      expect(moved.questionIds, [1, 2]);
      expect(moved.elapsedSeconds, 42);
    });
  });
}

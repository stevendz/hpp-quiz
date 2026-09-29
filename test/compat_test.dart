import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hpp_quiz/data/all_questions.dart';
import 'package:hpp_quiz/main.dart';
import 'package:hpp_quiz/services/exam_modes.dart';
import 'package:hpp_quiz/services/storage_service.dart';
import 'package:hpp_quiz/services/study_plan.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Spielstand, wie ihn ältere App-Versionen gespeichert haben – gemischt aus dem ersten Format (nur attempts und
/// correctCount, „allAnswered“, Prüfungen ohne mode, selected als Zahl) und 1.1.x (lastCorrect, correctStreak,
/// 30 Fragen pro Übungsprüfung).
Map<String, dynamic> oldState(List<int> ids) => {
      'questionStats': {
        '${ids[0]}': {'attempts': 1, 'correctCount': 1}, // erstes Format: 1 von 1 richtig → sicher
        '${ids[1]}': {'attempts': 3, 'correctCount': 2}, // erstes Format: 2 von 3 richtig → sicher
        '${ids[2]}': {'attempts': 1, 'correctCount': 0}, // erstes Format: falsch
        '${ids[3]}': {'attempts': 2, 'correctCount': 1, 'lastCorrect': true, 'correctStreak': 1},
        '${ids[4]}': {'attempts': 2, 'correctCount': 1, 'lastCorrect': false, 'correctStreak': 0},
        // Nach einem Fehler erst einmal richtig: noch nicht wieder sicher
        '${ids[5]}': {'attempts': 2, 'correctCount': 1, 'lastCorrect': false, 'correctStreak': 1},
      },
      'currentExam': {
        'questionIds': ids.sublist(10, 40), // laufende Übungsprüfung mit 30 Fragen
        'currentIndex': 5,
        'answers': {
          '${ids[10]}': {'selected': 0, 'correct': true},
        },
        'score': 1,
        'elapsedSeconds': 120,
      },
      'examHistory': [
        {'date': '2026-09-27T19:30:00.000', 'score': 20, 'total': 30, 'elapsedSeconds': 900},
        {
          'date': '2026-09-28T19:30:00.000',
          'score': 25,
          'total': 30,
          'elapsedSeconds': 900,
          'questionIds': <int>[],
          'answers': <String, dynamic>{},
          'mode': 'practice',
        },
      ],
      'allAnswered': false,
      'bookmarks': [ids[7]],
    };

void main() {
  final ids = allQuestions.map((q) => q.id).toList();

  setUp(() {
    SharedPreferences.setMockInitialValues({'hpp-quiz-state': jsonEncode(oldState(ids))});
    PackageInfo.setMockInitialValues(
      appName: 'HPP Prüfungstrainer',
      packageName: 'hpp_quiz',
      version: '1.1.3',
      buildNumber: '113',
      buildSignature: '',
    );
  });

  test('übernimmt den Stand der Fragen aus älteren Versionen', () async {
    final state = await StorageService.loadState();
    expect(seenQuestionCount(state), 6);
    expect(masteredQuestionCount(state), 3);
    expect(state.bookmarks, {ids[7]});
    expect(state.examHistory.map((r) => r.total), [30, 30]);

    final exam = state.currentExam!;
    expect(exam.questionIds, hasLength(30));
    expect(exam.mode, ExamMode.practice);
    expect(exam.answers[ids[10]]!.selected, [0]);

    // Einmal im neuen Format gespeichert und wieder geladen: derselbe Stand.
    await StorageService.saveState(state);
    final again = await StorageService.loadState();
    expect((seenQuestionCount(again), masteredQuestionCount(again)), (6, 3));
    expect(again.questionStats[ids[5]]!.correctStreak, 1);
  });

  test('neue Übungsprüfungen haben 28 Fragen', () async {
    final state = await StorageService.loadState();
    final exam = generateExam(state);
    expect(exam, hasLength(examSize));
    expect(exam.toSet(), hasLength(examSize));
  });

  testWidgets('Startseite zeigt den übernommenen Stand, die laufende 30er-Prüfung und fragt nach dem Termin',
      (tester) async {
    await tester.pumpWidget(const HppQuizApp());
    await tester.pumpAndSettle();

    expect(find.text('6/560'), findsOneWidget);
    expect(find.byWidgetPredicate((w) => w is Semantics && w.properties.label == '3 korrekt'), findsOneWidget);
    expect(find.byIcon(Icons.local_fire_department_rounded), findsOneWidget); // Lernserie in der Box
    expect(find.text('Prüfung fortsetzen (Frage 6/30)'), findsOneWidget);
    expect(find.text('Wann ist deine Prüfung?'), findsOneWidget);

    // Die Lernserie beginnt mit den Tagen der bisherigen Prüfungen.
    final log = (await StudyPlanStorage.loadLog())!;
    expect(log.answersOn(DateTime(2026, 9, 27)), 30);
    expect(log.answersOn(DateTime(2026, 9, 28)), 30);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hpp_quiz/data/all_questions.dart';
import 'package:hpp_quiz/screens/exam_day_screen.dart';
import 'package:hpp_quiz/screens/exam_screen.dart';
import 'package:hpp_quiz/screens/flashcard_screen.dart';
import 'package:hpp_quiz/services/exam_modes.dart';
import 'package:hpp_quiz/services/storage_service.dart';
import 'package:hpp_quiz/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Prüfung, Prüfungstag und Lernkarten auf einem kleinen iPhone (375 × 667 pt) – mit normaler und doppelter
/// Schriftgröße (Einstellung „Größerer Text“ bzw. WCAG 1.4.4).
Widget _app(Widget screen, {double textScale = 1}) => MaterialApp(
      theme: AppTheme.darkTheme,
      home: MediaQuery(
        data: MediaQueryData(size: const Size(375, 667), textScaler: TextScaler.linear(textScale)),
        child: Scaffold(body: screen),
      ),
    );

/// Mehrfachauswahl mit Aussagenliste – der längste Fall für Frage und Antworten.
final _multiple = allQuestions.firstWhere((q) => q.isMultiple && q.q.contains('\n'));

QuizState _practice() => QuizState.defaultState().copyWith(
      currentExam: ExamState(questionIds: [_multiple.id, ...allQuestions.take(27).map((q) => q.id)], answers: {}),
    );

QuizState _examDay() => QuizState.defaultState().copyWith(
      currentExam: ExamState(
        questionIds: examDayQuestionIds('März 2025'),
        answers: {},
        mode: ExamMode.examDay,
        examLabel: 'März 2025',
        timeLimitSeconds: examDaySeconds,
      ),
    );

Widget _examScreen(QuizState state) => ExamScreen(
      state: state,
      onPersist: (_) async {},
      onGoHome: () {},
      onExamFinished: () {},
      onToggleBookmark: (_) {},
    );

Widget _examDayScreen() => ExamDayScreen(
      state: _examDay(),
      onPersist: (_) async {},
      onGoHome: () {},
      onExamFinished: () {},
      onToggleBookmark: (_) {},
    );

Widget _flashcards() => FlashcardScreen(
      selectedTags: const {'F3 – Affektive Störungen'},
      onGoHome: () {},
    );

Future<void> _pump(WidgetTester tester, Widget app) async {
  tester.view.physicalSize = const Size(375, 667);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(app);
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 50));
}

/// Beendet laufende Timer (Prüfungsuhr), damit der Test sauber endet.
Future<void> _stop(WidgetTester tester) => tester.pumpWidget(const SizedBox());

Future<void> _meetsGuidelines(WidgetTester tester) async {
  await expectLater(tester, meetsGuideline(iOSTapTargetGuideline));
  await expectLater(tester, meetsGuideline(androidTapTargetGuideline));
  await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
  await expectLater(tester, meetsGuideline(textContrastGuideline));
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  final screens = <String, Widget Function()>{
    'Übungsprüfung': () => _examScreen(_practice()),
    'Prüfungstag': _examDayScreen,
    'Lernkarten': _flashcards,
  };

  for (final MapEntry(key: name, value: screen) in screens.entries) {
    testWidgets('$name: Tippflächen, Beschriftungen und Kontrast', (tester) async {
      final semantics = tester.ensureSemantics();
      await _pump(tester, _app(screen()));
      await _meetsGuidelines(tester);
      semantics.dispose();
      await _stop(tester);
    });

    testWidgets('$name: 200 % Schriftgröße ohne Überlauf', (tester) async {
      await _pump(tester, _app(screen(), textScale: 2));
      expect(tester.takeException(), isNull);
      await _stop(tester);
    });
  }

  testWidgets('Übungsprüfung nach dem Antworten: Auswertung, Tippflächen und Kontrast', (tester) async {
    final state = _practice();
    final exam = state.currentExam!;
    final answered = state.copyWith(
      currentExam: exam.copyWith(answers: {
        _multiple.id: AnswerRecord(selected: [0], correct: false),
      }),
    );
    final semantics = tester.ensureSemantics();
    await _pump(tester, _app(_examScreen(answered)));
    await _meetsGuidelines(tester);
    semantics.dispose();
    await _stop(tester);

    await _pump(tester, _app(_examScreen(answered), textScale: 2));
    expect(tester.takeException(), isNull);
    await _stop(tester);
  });
}

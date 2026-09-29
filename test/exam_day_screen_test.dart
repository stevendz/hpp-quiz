import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hpp_quiz/screens/exam_day_screen.dart';
import 'package:hpp_quiz/services/exam_modes.dart';
import 'package:hpp_quiz/services/storage_service.dart';
import 'package:hpp_quiz/theme/app_theme.dart';

/// Hält den Zustand wie der QuizController der App.
class _Host extends StatefulWidget {
  final QuizState initial;
  final VoidCallback onFinished;

  const _Host({required this.initial, required this.onFinished});

  @override
  State<_Host> createState() => _HostState();
}

class _HostState extends State<_Host> {
  late QuizState state = widget.initial;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      home: Scaffold(
        body: state.currentExam == null
            ? const Text('Auswertung')
            : ExamDayScreen(
                state: state,
                onPersist: (s) async => setState(() => state = s),
                onGoHome: () {},
                onExamFinished: widget.onFinished,
                onToggleBookmark: (id) => setState(() {
                  final bookmarks = {...state.bookmarks};
                  if (!bookmarks.remove(id)) bookmarks.add(id);
                  state = state.copyWith(bookmarks: bookmarks);
                }),
              ),
      ),
    );
  }
}

QuizState _examDay({int elapsedSeconds = 0}) => QuizState.defaultState().copyWith(
      currentExam: ExamState(
        questionIds: examDayQuestionIds('März 2025'),
        answers: {},
        elapsedSeconds: elapsedSeconds,
        mode: ExamMode.examDay,
        examLabel: 'März 2025',
        timeLimitSeconds: examDaySeconds,
      ),
    );

void main() {
  late int finished;

  Future<_HostState> start(WidgetTester tester, QuizState initial) async {
    tester.view.physicalSize = const Size(1000, 2400);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);
    finished = 0;
    await tester.pumpWidget(_Host(initial: initial, onFinished: () => finished++));
    await tester.pump();
    return tester.state<_HostState>(find.byType(_Host));
  }

  // Beendet den Countdown-Timer, damit der Test keine laufenden Timer hinterlässt.
  Future<void> stop(WidgetTester tester) => tester.pumpWidget(const SizedBox());

  testWidgets('Countdown, freie Navigation und änderbare Antworten ohne Feedback', (tester) async {
    final host = await start(tester, _examDay());

    expect(find.text('55:00'), findsOneWidget);
    expect(find.text('PRÜFUNGSTAG · MÄRZ 2025'), findsOneWidget);
    expect(find.text('Frage 1/28'), findsOneWidget);
    expect(find.text('0/28'), findsOneWidget);

    await tester.pump(const Duration(seconds: 1));
    expect(find.text('54:59'), findsOneWidget);

    // Frage 1 ist eine Mehrfachauswahl (A und B richtig): Auswahl lässt sich an- und abwählen.
    await tester.tap(find.textContaining('Atemdepression und Unterkühlung'));
    await tester.pump();
    expect(find.text('1/28'), findsOneWidget);
    expect(host.state.currentExam!.answers[20251]!.selected, [0]);
    expect(find.textContaining('Richtig'), findsNothing);
    expect(find.textContaining('Falsch'), findsNothing);

    await tester.tap(find.textContaining('unter 1,0 Promille'));
    await tester.pump();
    expect(host.state.currentExam!.answers[20251]!.selected, [0, 1]);
    expect(host.state.currentExam!.answers[20251]!.correct, isTrue);

    await tester.tap(find.byTooltip('Nächste Frage'));
    await tester.pump();
    expect(find.text('Frage 2/28'), findsOneWidget);

    // Einfachauswahl: eine neue Wahl ersetzt die alte.
    await tester.tap(find.textContaining('Nur die Aussagen 1 und 2 sind richtig'));
    await tester.pump();
    await tester.tap(find.textContaining('Nur die Aussagen 4 und 5 sind richtig'));
    await tester.pump();
    expect(host.state.currentExam!.answers[20252]!.selected, [2]);
    expect(host.state.currentExam!.answers[20252]!.correct, isFalse);

    // Direkt zu einer Frage springen und wieder zurück.
    await tester.tap(find.bySemanticsLabel('Frage 5'));
    await tester.pump();
    expect(find.text('Frage 5/28'), findsOneWidget);
    await tester.tap(find.bySemanticsLabel('Frage 1, beantwortet'));
    await tester.pump();
    expect(find.text('Frage 1/28'), findsOneWidget);
    expect(find.byTooltip('Vorherige Frage'), findsOneWidget);

    expect(finished, 0);
    await stop(tester);
  });

  testWidgets('Abgeben wertet aus und schreibt nur beantwortete Fragen in die Statistik', (tester) async {
    final host = await start(tester, _examDay());

    await tester.tap(find.textContaining('Atemdepression und Unterkühlung'));
    await tester.pump();
    await tester.tap(find.textContaining('unter 1,0 Promille'));
    await tester.pump();

    await tester.tap(find.text('Abgeben'));
    await tester.pumpAndSettle();
    expect(find.text('Prüfung abgeben?'), findsOneWidget);
    expect(find.textContaining('Noch 27 Fragen sind unbeantwortet'), findsOneWidget);

    // Erst „Weiter bearbeiten“, dann wirklich abgeben.
    await tester.tap(find.text('Weiter bearbeiten'));
    await tester.pumpAndSettle();
    expect(host.state.currentExam, isNotNull);

    await tester.tap(find.text('Abgeben'));
    await tester.pumpAndSettle();
    await tester.tap(find.descendant(of: find.byType(AlertDialog), matching: find.text('Abgeben')));
    await tester.pumpAndSettle();

    expect(finished, 1);
    expect(host.state.currentExam, isNull);
    final record = host.state.examHistory.single;
    expect(record.mode, ExamMode.examDay);
    expect(record.examLabel, 'März 2025');
    expect(record.total, 28);
    expect(record.score, 1);
    expect(record.timedOut, isFalse);
    expect(record.questionIds, examDayQuestionIds('März 2025'));
    expect(host.state.questionStats.keys, [20251]);
    expect(host.state.questionStats[20251]!.lastCorrect, isTrue);
    await stop(tester);
  });

  testWidgets('gibt automatisch ab, wenn die Zeit abläuft', (tester) async {
    final host = await start(tester, _examDay(elapsedSeconds: examDaySeconds - 2));
    expect(find.text('00:02'), findsOneWidget);

    await tester.pump(const Duration(seconds: 2));
    await tester.pump();

    expect(finished, 1);
    final record = host.state.examHistory.single;
    expect(record.timedOut, isTrue);
    expect(record.elapsedSeconds, examDaySeconds);
    expect(record.score, 0);
    expect(host.state.questionStats, isEmpty);
    await stop(tester);
  });

  testWidgets('Fortsetzen nach abgelaufener Zeit gibt sofort ab', (tester) async {
    final host = await start(tester, _examDay(elapsedSeconds: examDaySeconds + 100));
    await tester.pump();

    expect(finished, 1);
    expect(host.state.examHistory.single.timedOut, isTrue);
    expect(host.state.examHistory.single.elapsedSeconds, examDaySeconds);
    await stop(tester);
  });

  testWidgets('Autospeichern verliert keine gerade gegebene Antwort', (tester) async {
    final host = await start(tester, _examDay(elapsedSeconds: 29));

    // Antwort und Autospeichern (bei 30 s) fallen in denselben Frame.
    await tester.tap(find.textContaining('Atemdepression und Unterkühlung'));
    await tester.pump(const Duration(seconds: 1));

    expect(host.state.currentExam!.elapsedSeconds, 30);
    expect(host.state.currentExam!.answers[20251]!.selected, [0]);
    await stop(tester);
  });
}

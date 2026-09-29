import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hpp_quiz/main.dart';
import 'package:hpp_quiz/services/study_plan.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
    PackageInfo.setMockInitialValues(
      appName: 'HPP Prüfungstrainer',
      packageName: 'hpp_quiz',
      version: '1.1.1',
      buildNumber: '11',
      buildSignature: '',
    );
  });

  testWidgets('App starts and shows title', (WidgetTester tester) async {
    await tester.pumpWidget(const HppQuizApp());
    await tester.pumpAndSettle();
    expect(find.text('HPP Prüfungstrainer'), findsOneWidget);
    expect(find.text('Prüfungstag simulieren'), findsOneWidget);
    // Ohne Lernplan fragt die App beim Start nach dem Prüfungsdatum – ohne Möglichkeit, das zu überspringen.
    expect(find.text('Wann ist deine Prüfung?'), findsOneWidget);
    expect(find.text('Abbrechen'), findsNothing);
    expect(find.text('Prüfungsdatum festlegen'), findsOneWidget);
    // Ohne Fehler und ohne gemerkte Fragen gibt es noch nichts zu wiederholen.
    expect(find.text('Fehler & Merkliste üben'), findsNothing);
  });

  testWidgets('Mit Lernplan: Termin unter dem Titel, Box mit Tagesziel, Serie und Zählern – auch auf schmalen Handys',
      (tester) async {
    final exam = DateTime.now().add(const Duration(days: 15));
    SharedPreferences.setMockInitialValues({
      'hpp-study-plan': jsonEncode(StudyPlan(examDate: exam).toJson()),
    });
    tester.view.physicalSize = const Size(320 * 3, 640 * 3);
    tester.view.devicePixelRatio = 3;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(const HppQuizApp());
    await tester.pumpAndSettle();

    expect(find.text('Wann ist deine Prüfung?'), findsNothing);
    expect(find.text('Prüfung in 15 Tagen'), findsOneWidget);
    expect(find.text('TAGESZIEL'), findsOneWidget);
    expect(find.text('0/2'), findsOneWidget); // Prüfungen
    expect(find.text('0/56'), findsOneWidget); // Fragen heute
    expect(find.text('Tage in Folge'), findsOneWidget);
    expect(find.text('0/560'), findsOneWidget);
    expect(find.byWidgetPredicate((w) => w is Semantics && w.properties.label == '0/560 gesehen'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}

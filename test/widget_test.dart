import 'package:flutter_test/flutter_test.dart';
import 'package:hpp_quiz/main.dart';
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
    // Ohne Fehler und ohne gemerkte Fragen gibt es noch nichts zu wiederholen.
    expect(find.text('Fehler & Merkliste üben'), findsNothing);
  });
}

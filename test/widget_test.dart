import 'package:flutter_test/flutter_test.dart';
import 'package:hpp_quiz/main.dart';

void main() {
  testWidgets('App starts and shows title', (WidgetTester tester) async {
    await tester.pumpWidget(const HppQuizApp());
    await tester.pumpAndSettle();
    expect(find.text('HPP Prüfungstrainer'), findsOneWidget);
  });
}

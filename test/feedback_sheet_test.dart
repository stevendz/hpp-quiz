import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hpp_quiz/screens/feedback_sheet.dart';
import 'package:hpp_quiz/theme/app_theme.dart';

void main() {
  testWidgets('Senden bleibt bei geöffneter Tastatur auf kleinem Display erreichbar', (tester) async {
    tester.view.physicalSize = const Size(375, 667);
    tester.view.devicePixelRatio = 1;
    tester.view.viewInsets = const FakeViewPadding(bottom: 336);
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.darkTheme,
        home: Scaffold(
          body: Builder(
            builder: (context) => TextButton(onPressed: () => FeedbackSheet.show(context), child: const Text('öffnen')),
          ),
        ),
      ),
    );
    await tester.tap(find.text('öffnen'));
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    await tester.scrollUntilVisible(find.text('Senden'), 50, scrollable: find.byType(Scrollable).last);
    expect(find.text('Senden').hitTestable(), findsOneWidget);
  });
}

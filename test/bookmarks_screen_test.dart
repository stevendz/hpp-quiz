import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hpp_quiz/screens/bookmarks_screen.dart';
import 'package:hpp_quiz/theme/app_theme.dart';

/// Hält die Merkliste wie der QuizController der App.
class _Host extends StatefulWidget {
  final Set<int> initial;

  const _Host(this.initial);

  @override
  State<_Host> createState() => _HostState();
}

class _HostState extends State<_Host> {
  late Set<int> bookmarks = {...widget.initial};
  final toggled = <int>[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      home: Scaffold(
        body: BookmarksScreen(
          bookmarks: bookmarks,
          onGoBack: () {},
          onToggleBookmark: (id) => setState(() {
            toggled.add(id);
            bookmarks = {...bookmarks};
            if (!bookmarks.remove(id)) bookmarks.add(id);
          }),
        ),
      ),
    );
  }
}

void main() {
  testWidgets('ohne Lesezeichen erklärt die Liste, wie man Fragen merkt', (tester) async {
    await tester.pumpWidget(const _Host({}));
    expect(find.text('0 gemerkte Fragen'), findsOneWidget);
    expect(find.textContaining('Tippe bei einer Frage auf das Lesezeichen'), findsOneWidget);
  });

  testWidgets('zeigt gemerkte Fragen, abgewählte bleiben bis zum Verlassen stehen', (tester) async {
    await tester.pumpWidget(const _Host({20251, 20261}));
    final host = tester.state<_HostState>(find.byType(_Host));

    expect(find.text('2 gemerkte Fragen'), findsOneWidget);
    expect(find.text('MÄRZ 2026 · FRAGE 1'), findsOneWidget);
    expect(find.text('MÄRZ 2025 · FRAGE 1'), findsOneWidget);
    // neueste Prüfung zuerst
    expect(tester.getTopLeft(find.text('MÄRZ 2026 · FRAGE 1')).dy, lessThan(tester.getTopLeft(find.text('MÄRZ 2025 · FRAGE 1')).dy));

    // abwählen
    await tester.tap(find.byTooltip('Aus Merkliste entfernen').first);
    await tester.pumpAndSettle();
    expect(host.toggled, [20261]);
    expect(host.bookmarks, {20251});
    expect(find.text('1 gemerkte Frage'), findsOneWidget);
    expect(find.text('MÄRZ 2026 · FRAGE 1'), findsOneWidget);
    expect(find.byTooltip('Frage merken'), findsOneWidget);

    // wieder merken
    await tester.tap(find.byTooltip('Frage merken'));
    await tester.pumpAndSettle();
    expect(host.bookmarks, {20251, 20261});
  });

  testWidgets('aufgeklappt zeigt die Frage Lösung und Erklärung', (tester) async {
    await tester.pumpWidget(const _Host({20254}));
    expect(find.text('Erklärung'), findsNothing);

    await tester.tap(find.text('MÄRZ 2025 · FRAGE 4'));
    await tester.pumpAndSettle();
    expect(find.text('Erklärung'), findsOneWidget);
    expect(find.textContaining('LSD und Ecstasy (MDMA) verursachen keine körperliche Abhängigkeit'), findsOneWidget);
    // richtige Antworten sind markiert
    expect(find.byIcon(Icons.check_circle_rounded), findsNWidgets(2));
    expect(find.byTooltip('Frage melden'), findsOneWidget);
  });
}

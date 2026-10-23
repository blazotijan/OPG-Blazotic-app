// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:opg/main.dart';
import 'package:opg/modeli/stavka.dart';

void main() {
  testWidgets('popis otvara detalje na malom zaslonu', (tester) async {
    kupljeniTraktori.clear();
    tester.view.physicalSize = const Size(320, 568);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const OpgAplikacija());
    expect(tester.takeException(), isNull);

    expect(stavke, hasLength(5));
    expect(find.text('John Deere 6520'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Zetor 4320'),
      250,
      scrollable: find.byType(Scrollable).last,
    );
    expect(find.text('Zetor 4320'), findsOneWidget);

    await tester.tap(find.text('Zetor 4320'));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);

    expect(find.text('Detalji traktora'), findsOneWidget);
    expect(
      find.text(
        'Kompaktan i univerzalan traktor za razne poslove na gospodarstvu.',
      ),
      findsOneWidget,
    );
    expect(find.text('Kupi'), findsOneWidget);
    expect(find.text('Natrag'), findsOneWidget);
    expect(find.byIcon(Icons.arrow_back), findsNothing);

    await tester.tap(find.text('Kupi'));
    await tester.pump();
    expect(find.text('Kupljen'), findsOneWidget);
    expect(find.text('Traktor je kupljen.'), findsNothing);
    await tester.pumpAndSettle();

    await tester.tap(find.text('Natrag'));
    await tester.pumpAndSettle();

    expect(find.text('Traktori OPG-a'), findsOneWidget);
    await tester.tap(find.text('Zetor 4320'));
    await tester.pumpAndSettle();
    expect(find.text('Kupljen'), findsOneWidget);
  });
}

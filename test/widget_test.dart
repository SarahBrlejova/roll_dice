import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:roll_dice/main.dart';

void main() {
  testWidgets('Shows dice and roll button', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: DiceRoller()));

    expect(find.byType(Image), findsOneWidget);
    expect(find.text('Hoď kockou'), findsOneWidget);

    await tester.tap(find.text('Hoď kockou'));
    await tester.pump();

    expect(find.byType(Image), findsOneWidget);
  });
}

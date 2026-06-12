import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';

import 'package:calculadora_felipe/src/app.dart';

void main() {
  testWidgets('Calculadora loads', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(430, 932);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MyApp());

    expect(find.text('Calculadora'), findsOneWidget);
    expect(find.text('='), findsOneWidget);
  });
}

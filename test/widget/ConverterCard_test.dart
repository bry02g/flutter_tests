import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tests_hw/widgets/ConverterCard.dart';

void main() {
  testWidgets('ConverterCard has formated time,textfield, and convert button',
      (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(MaterialApp(
      home: ConverterCard(),
    ));
    // Create the Finders.
    final formatedTimeFinder = find.byKey(Key('formated-time'));
    final secondsTextFieldFinder = find.byKey(Key('seconds-textfield'));
    final convertBtnFinder = find.byKey(Key('convert-button'));

    // Use the `findsOneWidget` matcher provided by flutter_test to
    // verify that the Text widgets appear exactly once in the widget tree.
    expect(formatedTimeFinder, findsOneWidget);
    expect(secondsTextFieldFinder, findsOneWidget);
    expect(convertBtnFinder, findsOneWidget);
  });

  testWidgets('ConverterCard displays correct formated time for seconds',
      (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(MaterialApp(
      home: ConverterCard(),
    ));
    // Create the Finders.
    final secondsTextFieldFinder = find.byKey(Key('seconds-textfield'));
    final convertBtnFinder = find.byKey(Key('convert-button'));

    await tester.tap(secondsTextFieldFinder);
    await tester.enterText(secondsTextFieldFinder, '30');

    await tester.pump(Duration(seconds: 2));

    expect(find.text('30'), findsOneWidget);

    await tester.tap(convertBtnFinder);

    await tester.pump(Duration(seconds: 2));

    expect(find.text('00:30'), findsOneWidget);
  });

  testWidgets('ConverterCard displays correct formated time for minutes',
      (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(MaterialApp(
      home: ConverterCard(),
    ));
    // Create the Finders.
    final secondsTextFieldFinder = find.byKey(Key('seconds-textfield'));
    final convertBtnFinder = find.byKey(Key('convert-button'));

    await tester.tap(secondsTextFieldFinder);
    await tester.enterText(secondsTextFieldFinder, '60');

    await tester.pump(Duration(seconds: 2));

    expect(find.text('60'), findsOneWidget);

    await tester.tap(convertBtnFinder);

    await tester.pump(Duration(seconds: 2));

    expect(find.text('01:00'), findsOneWidget);
  });

  testWidgets('ConverterCard displays correct formated time for hours',
      (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(MaterialApp(
      home: ConverterCard(),
    ));
    // Create the Finders.
    final secondsTextFieldFinder = find.byKey(Key('seconds-textfield'));
    final convertBtnFinder = find.byKey(Key('convert-button'));

    await tester.tap(secondsTextFieldFinder);
    await tester.enterText(secondsTextFieldFinder, '3600');

    await tester.pump(Duration(seconds: 2));

    expect(find.text('3600'), findsOneWidget);

    await tester.tap(convertBtnFinder);

    await tester.pump(Duration(seconds: 2));

    expect(find.text('01:00:00'), findsOneWidget);
  });
}

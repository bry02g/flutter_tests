// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  FlutterDriver driver;

  // Connect to the Flutter driver before running any tests.
  setUpAll(() async {
    driver = await FlutterDriver.connect();
  });

  // Close the connection to the driver after the tests have completed.
  tearDownAll(() async {
    if (driver != null) {
      driver.close();
    }
  });
  group("Login Screen:", () {
    test("If credential are not entered should not be able to login", () async {
      final loginHeaderFidner = find.byValueKey('login-header');
      final doneBtnFinder = find.byValueKey('done-btn');
    });

    test(
        'if username is present but password is empty should not be able to login',
        () async {
      final loginHeaderFidner = find.byValueKey('login-header');
      final usernameFinder = find.byValueKey('username-textfield');
      final doneBtnFinder = find.byValueKey('done-btn');
    });

    test(
        'if username is empty but password is provided should not be able to login',
        () async {
      final loginHeaderFidner = find.byValueKey('login-header');
      final usernameFinder = find.byValueKey('username-textfield');
      final passwordFinder = find.byValueKey('password-textfield');
      final doneBtnFinder = find.byValueKey('done-btn');

      // HINT: Don't forget to clear username textfield from previous test
    });

    test('if username and password are provided you should be able to login',
        () async {
      final usernameFinder = find.byValueKey('username-textfield');
      final passwordFinder = find.byValueKey('password-textfield');
      final doneBtnFinder = find.byValueKey('done-btn');

      final textLabelInConversionScreen =
          find.byValueKey('input-texfield-label');
    });
  });

  group("ConversionScreen:", () {
    test('if 30 sec are entered should display 00:30 in the format mm:ss',
        () async {
      final formatedTextFinder = find.byValueKey('formated-time');
      final inputTextFieldFinder = find.byValueKey('seconds-textfield');
      final converBtnFinder = find.byValueKey('convert-button');
    });

    test('if 60 sec are entered should display 01:00 in the format mm:ss',
        () async {
      final formatedTextFinder = find.byValueKey('formated-time');
      final inputTextFieldFinder = find.byValueKey('seconds-textfield');
      final converBtnFinder = find.byValueKey('convert-button');
    });

    test(
        'if 3600 sec are entered should display 01:00:00 in the format hh:mm:ss',
        () async {
      final formatedTextFinder = find.byValueKey('formated-time');
      final inputTextFieldFinder = find.byValueKey('seconds-textfield');
      final converBtnFinder = find.byValueKey('convert-button');
    });
  });
}

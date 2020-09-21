import 'package:test/test.dart';
import 'package:tests_hw/utils/TimeConverter.dart';

void main() {
  test('if 0 seconds are given, hr,min, sec should all be zero', () {});

  test('if 44 seconds are given, only seconds should be 44', () {});

  test('if 64 seconds are given, mins should be 1 and seconds 4', () {});

  test(
      'if 3775 seconds are given, hrs should be 1, mins should be 2 and seconds 55',
      () {});

  test('if negative seconds are given, an exception should be thrown', () {
    expect(() => TimeConverter.convertSecondToHMS(-10), throwsException);
  });
}

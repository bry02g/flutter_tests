import 'package:test/test.dart';
import 'package:tests_hw/utils/TimeConverter.dart';

void main() {
  test('if 0 seconds are given, hr,min, sec should all be zero', () {
    List<int> results = TimeConverter.convertSecondToHMS(0);
    int hours = results[0];
    int mins = results[1];
    int seconds = results[2];

    expect(hours, 0);
    expect(mins, 0);
    expect(seconds, 0);
  });

  test('if 44 seconds are given, only seconds should be 44', () {
    List<int> results = TimeConverter.convertSecondToHMS(44);
    int hours = results[0];
    int mins = results[1];
    int seconds = results[2];

    expect(hours, 0);
    expect(mins, 0);
    expect(seconds, 44);
  });

  test('if 64 seconds are given, mins should be 1 and seconds 4', () {
    List<int> results = TimeConverter.convertSecondToHMS(64);
    int hours = results[0];
    int mins = results[1];
    int seconds = results[2];

    expect(hours, 0);
    expect(mins, 1);
    expect(seconds, 4);
  });

  test(
      'if 3775 seconds are given, hrs should be 1, mins should be 2 and seconds 55',
      () {
    List<int> results = TimeConverter.convertSecondToHMS(3775);
    int hours = results[0];
    int mins = results[1];
    int seconds = results[2];

    expect(hours, 1);
    expect(mins, 2);
    expect(seconds, 55);
  });

  test('if negative seconds are given, an exception should be thrown', () {
    expect(() => TimeConverter.convertSecondToHMS(-10), throwsException);
  });
}

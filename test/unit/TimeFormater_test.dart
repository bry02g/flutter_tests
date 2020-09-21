import 'package:test/test.dart';
import 'package:tests_hw/utils/TimeFormater.dart';

void main() {
  test('if 0 seconds are given, the format should be 00:00', () {
    String results = TimeFormater.formatTimeFromSeconds(0);

    expect(results, "00:00");
  });

  test('if 30 seconds are given, the format should be 00:30', () {
    String results = TimeFormater.formatTimeFromSeconds(30);

    expect(results, "00:30");
  });
  test('if 60 seconds are given, the format should be 01:00', () {
    String results = TimeFormater.formatTimeFromSeconds(60);

    expect(results, "01:00");
  });

  test('if 63 seconds are given, the format should be 01:03', () {
    String results = TimeFormater.formatTimeFromSeconds(63);

    expect(results, "01:03");
  });

  test('if 3600 seconds are given, the format should be 01:00:00', () {
    String results = TimeFormater.formatTimeFromSeconds(3600);

    expect(results, "01:00:00");
  });

  test('if 3660 seconds are given, the format should be 01:01:00', () {
    String results = TimeFormater.formatTimeFromSeconds(3660);

    expect(results, "01:01:00");
  });

  test('if 3667 seconds are given, the format should be 01:01:07', () {
    String results = TimeFormater.formatTimeFromSeconds(3667);

    expect(results, "01:01:07");
  });
}

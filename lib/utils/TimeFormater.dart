import 'TimeConverter.dart';

class TimeFormater {
  /// Takes in a time in seconds and formats it nicely.
  /// The format expected is mm:ss
  /// if hours are non zero then the format is hh:mm:ss
  /// Note: if minutes are zero they are still included ex. 00:20
  static String formatTimeFromSeconds(int timeInSeconds) {
    List<int> parts = TimeConverter.convertSecondToHMS(timeInSeconds);

    int hours = parts[0];
    int mins = parts[1];
    int seconds = parts[2];

    String result = "${padIfNeeded(mins)}:${padIfNeeded(seconds)}"; // mm:ss

    if (hours != 0) {
      result = padIfNeeded(hours) + ":" + result; // hh:mm:ss
    }

    return result;
  }

  static String padIfNeeded(int number) {
    String result = number.toString();
    while (result.length < 2) {
      result = "0" + result;
    }
    return result;
  }
}

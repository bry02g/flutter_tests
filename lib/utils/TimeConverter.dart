class TimeConverter {
  /// converts a seconds to its hours, minutes, seconds parts.
  /// will return a list in the following format [hours, mins, seconds]
  /// ex. convertSecondToHMS(30) -> [0,0,30]
  /// ex. convertSecondToHMS(65) -> [0,1,5]
  /// ex. convertSecondToHMS(3600) -> [1,0,0]
  static List<int> convertSecondToHMS(int seconds) {
    if (seconds < 0) {
      throw Exception('Seconds should not be negative');
    }
    int hours = (seconds / 3600).floor();
    seconds = (seconds % 3600);

    int minutes = (seconds / 60).floor();
    seconds = (seconds % 60);

    return [hours, minutes, seconds];
  }
}

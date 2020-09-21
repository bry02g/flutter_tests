class TimeConverter {
  /// converts a seconds to its hours, minutes, seconds parts.
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

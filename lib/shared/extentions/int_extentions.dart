extension NearestTenExtension on int {
  int get nearestTen {
    int remainder = this % 10;

    if (remainder >= 5) {
      return this + (10 - remainder);
    } else {
      return this - remainder;
    }
  }
}

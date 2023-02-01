bool validPerfectSquare(int number) {
  int l = 0, r = number;

  while (l <= r) {
    final mid = (l + r) ~/ 2;

    if (mid * mid == number) {
      return true;
    } else if (mid * mid < number) {
      l = mid + 1;
    } else {
      r = mid - 1;
    }
  }

  return false;
}

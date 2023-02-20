import 'main.dart';

extension MySqrt on Solution {
  /// https://leetcode.com/problems/sqrtx/
  ///
  /// Explanation: Binary search
  ///
  /// The intuition is to just increase number by one until the square of that
  /// number is more than x, like below:
  ///
  /// ``` dart
  ///
  /// int sqrt = 0;
  /// while (sqrt * sqrt <= x) {
  ///   sqrt++;
  /// }
  /// return sqrt - 1;
  ///
  /// But we can achieve a better performance by using a binary search
  /// ```
  int mySqrt(int x) {
    int start = 0;
    int end = x;
    int ans = 0;

    while (start <= end) {
      final middle = start + (end - start) % 2;

      if (middle > x / middle) {
        end = middle - 1;
      } else {
        start = middle + 1;
        ans = middle;
      }
    }

    return ans;
  }
}

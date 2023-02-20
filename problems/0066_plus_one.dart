import 'main.dart';

extension PlusOne on Solution {
  /// https://leetcode.com/problems/plus-one/
  ///
  /// Explanation: Simple addition with a carryover
  List<int> plusOne(List<int> digits) {
    for (int i = digits.length - 1; i >= 0; i--) {
      if (digits[i] < 9) {
        digits[i]++;
        return digits;
      } else {
        digits[i] = 0;
      }
    }

    return [1] + digits;
  }
}

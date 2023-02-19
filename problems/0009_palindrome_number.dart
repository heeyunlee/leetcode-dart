import 'main.dart';

extension IsPalindrome on Solution {
  /// https://leetcode.com/problems/palindrome-number/
  ///
  /// Explanation: Shrink towards center
  ///
  /// Starting from the two farthest digits, check if they are the same until
  /// it is in the middle. If at any given point, two digits do not match,
  /// it means that the number is NOT palindrome, so return `false`. If you iterate
  /// over the number without returning, it means that the number is palindrome,
  /// so return `true`
  bool isPalindrome(int x) {
    final num1ToString = x.toString();
    final numLength = num1ToString.length ~/ 2;

    for (int i = 0; i < numLength; i++) {
      if (num1ToString[i] != num1ToString[num1ToString.length - 1 - i]) {
        return false;
      }
    }

    return true;
  }
}

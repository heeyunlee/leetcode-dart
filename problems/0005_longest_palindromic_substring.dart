import 'main.dart';

extension LongestPalindrome on Solution {
  /// https://leetcode.com/problems/longest-palindromic-substring/
  ///
  /// Explanation: "Expand around center"
  ///
  /// Iterate over each character in `s` and uses that character (and possibly
  /// its adjacent character) as the center of a potential palindrome substring.
  /// For each center, the function checks if the substring centered around that
  /// character is a palindrome by expanding outwards from the center and
  /// comparing the characters at each end.
  String longestPalindrome(String s) {
    String result = '';

    for (int i = 0; i < s.length; i++) {
      // For odd length strings, e.g., aba
      int l = i, r = i;

      while (l >= 0 && r < s.length && s[l] == s[r]) {
        if (r - l + 1 >= result.length) {
          result = s.substring(l, r + 1);
        }

        l--;
        r++;
      }

      // For even length strings, e.g., abba
      l = i;
      r = i + 1;

      while (l >= 0 && r < s.length && s[l] == s[r]) {
        if (r - l + 1 >= result.length) {
          result = s.substring(l, r + 1);
        }

        l--;
        r++;
      }
    }

    return result;
  }
}

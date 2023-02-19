import 'dart:math';

import 'main.dart';

extension LengthOfLongestSubstring on Solution {
  /// https://leetcode.com/problems/longest-substring-without-repeating-characters/
  ///
  /// Explanation: Sliding Window
  ///
  /// Create two pointers, i and j, which will represent the starting and ending
  /// index of the substring, respectively.
  ///
  /// We iterate through each character in `s`, marking the index as j, and we
  /// also keep track of characters and their indexes so that if the character is
  /// already found in the map, we can skip i to be j + 1.
  ///
  int lengthOfLongestSubstring(String s) {
    if (s.length <= 1) return s.length;

    int i = 0;
    int maxLength = 0;
    Map<String, int> usedChar = {};

    for (int j = 0; j < s.length; j++) {
      final char = s[j];

      if (usedChar.containsKey(char)) {
        i = max(usedChar[char]! + 1, i);
      }

      maxLength = max(maxLength, j - i + 1);
      usedChar[char] = j;
    }

    return maxLength;
  }
}

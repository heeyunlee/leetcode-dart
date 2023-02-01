import 'dart:math';

/// https://leetcode.com/problems/longest-substring-without-repeating-characters/
int lengthOfLongestSubstring(String s) {
  int start = 0;
  int maxLength = 0;

  // Keep track of used character and its index
  Map<String, int> usedChar = {};

  for (int i = 0; i < s.length; i++) {
    final char = s[i];

    if (usedChar.containsKey(char) && start <= usedChar[char]!) {
      start = usedChar[char]! + 1;
    } else {
      maxLength = max(maxLength, i - start + 1);
    }

    usedChar[char] = i;
  }

  return maxLength;
}

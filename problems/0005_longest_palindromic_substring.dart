/// https://leetcode.com/problems/longest-palindromic-substring/
String longestPalindromeSubstring(String s) {
  String result = '';

  // Set each s[i] as a center of the polindrome
  for (int i = 0; i < s.length; i++) {
    // ada
    String odd = _getLongestPalindrome(s, i, i);

    // adda
    String even = _getLongestPalindrome(s, i, i + 1);
    String palindrome = odd.length > even.length ? odd : even;

    if (palindrome.length > result.length) {
      result = palindrome;
    }
  }

  return result;
}

String _getLongestPalindrome(String s, int l, int r) {
  String result = '';

  /// Starting from the middle, left pointer `l` and right pointer 'r' keep pointing
  /// outward, until the pointed characters do not match.
  while (l >= 0 && r < s.length && s[l] == s[r]) {
    int palindromeLen = r - l + 1;

    if (palindromeLen > result.length) {
      result = s.substring(l, r + 1);
    }

    l--;
    r++;
  }

  return result;
}

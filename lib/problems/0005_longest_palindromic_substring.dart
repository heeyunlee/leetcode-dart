String longestPalindromeSubstring(String s) {
  String result = '';

  for (int i = 0; i < s.length; i++) {
    String odd = _getLongestPalindrome(s, i, i);
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

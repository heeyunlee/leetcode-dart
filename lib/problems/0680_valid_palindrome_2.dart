bool validPalindrome2(String s) {
  int l = 0, r = s.length - 1;

  while (l <= r) {
    if (s[l] == s[r]) {
      l++;
      r--;
    } else {
      return _isValidPalindrome(s, l + 1, r) || _isValidPalindrome(s, l, r + 1);
    }
  }
  return true;
}

bool _isValidPalindrome(String s, int l, int r) {
  while (l <= r) {
    if (s[l] == s[r]) {
      l++;
      r--;
    } else {
      return false;
    }
  }
  return true;
}

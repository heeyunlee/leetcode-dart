void reverseString(List<String> s) {
  int l = 0, r = s.length - 1;

  while (l < r) {
    final temp = s[l];
    s[l] = s[r];
    s[r] = temp;
    l++;
    r--;
  }
}

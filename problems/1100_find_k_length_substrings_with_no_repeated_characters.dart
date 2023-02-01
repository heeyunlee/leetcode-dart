int numKLenSubstrNoRepeats(String s, int k) {
  int count = 0;

  if (s.length < k) return count;

  for (int i = 0; i < s.length - k + 1; i++) {
    String substring = s.substring(i, i + k);

    if (substring.split('').toSet().length == substring.length) {
      count++;
    }
  }

  return count;
}

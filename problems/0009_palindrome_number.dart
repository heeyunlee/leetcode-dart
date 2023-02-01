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

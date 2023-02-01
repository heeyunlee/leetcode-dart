String gcdOfStrings(String str1, String str2) {
  final gcd = str1.length.gcd(str2.length);
  final gcdString = str1.substring(0, gcd);
  return str1 + str2 == str2 + str1 ? gcdString : '';
}

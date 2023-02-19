import 'main.dart';

extension RomanToInt on Solution {
  /// https://leetcode.com/problems/roman-to-integer/
  ///
  /// Explanation: using RegExp to match all roman numeral patterns and replace
  /// them with arabic
  int romanToInt(String s) {
    final romanToArabic = {
      'I': 1,
      'IV': 4,
      'V': 5,
      'IX': 9,
      'X': 10,
      'XL': 40,
      'L': 50,
      'XC': 90,
      'C': 100,
      'CD': 400,
      'D': 500,
      'CM': 900,
      'M': 1000
    };
    int number = 0;

    final regex = RegExp('M|CM|D|CD|C|XC|L|XL|X|IX|V|IV|I');
    final matches = regex.allMatches(s);

    for (final match in matches) {
      number += (romanToArabic[match.group(0)] ?? 0).toInt();
    }

    return number;
  }
}

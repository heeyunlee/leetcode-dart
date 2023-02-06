/// https://leetcode.com/problems/find-all-anagrams-in-a-string/
class Solution438 {
  List<int> findAnagrams(String s, String p) {
    final aUintCode = 'a'.codeUnitAt(0);
    List<int> result = [];

    int sLength = s.length;
    int pLength = p.length;

    List<int> sCount = List<int>.filled(26, 0);
    List<int> pCount = List<int>.filled(26, 0);

    for (final char in p.split('')) {
      pCount[char.codeUnits.first - aUintCode] += 1;
    }

    for (int i = 0; i < sLength; i++) {
      sCount[s[i].codeUnits.first - aUintCode] += 1;

      if (i >= pLength) {
        sCount[s[i - pLength].codeUnitAt(0) - aUintCode] -= 1;
      }

      if (equals(sCount, pCount)) result.add(i - pLength + 1);
    }

    return result;
  }

  /// List equality function from [collection package](https://github.com/dart-lang/collection/blob/master/lib/src/equality.dart#L171-L180)
  bool equals<E>(List<E>? a, List<E>? b) {
    if (identical(a, b)) return true;
    if (a == null || b == null) return false;
    final length = a.length;
    if (length != b.length) return false;
    for (var i = 0; i < length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}

/// https://leetcode.com/problems/unique-number-of-occurrences/
///
/// Explanation: Keep a map of each number and its occurance, and check if there
/// is any duplicate on values of the map.
bool uniqueOccurrences(List<int> arr) {
  Map<int, int> numberByOccurance = {};

  for (final number in arr) {
    numberByOccurance.update(
      number,
      (value) => value + 1,
      ifAbsent: () => 1,
    );
  }

  final values = numberByOccurance.values;

  return values.length == values.toSet().length;
}

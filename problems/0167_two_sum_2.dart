import 'main.dart';

extension TwoSumTwo on Solution {
  /// https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/
  ///
  /// Explanation: two pointers but taking advantage of the sorted array.
  List<int> twoSum2(List<int> numbers, int target) {
    int l = 0;
    int r = numbers.length - 1;

    while (l < r) {
      final sum = numbers[l] + numbers[r];

      if (sum == target) {
        return [l + 1, r + 1];
      } else if (sum < target) {
        l++;
      } else {
        r--;
      }
    }

    return [];
  }
}

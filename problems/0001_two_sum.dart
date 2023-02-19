import 'main.dart';

extension TwoSum on Solution {
  /// https://leetcode.com/problems/two-sum/
  ///
  /// Explanation: One-pass hash table
  ///
  /// Because of the assumption that only one valid answer exists (neither 0 nor
  /// 2), we can take a one-pass hash table apprach.
  ///
  /// This approach goes through each number in a list, and substract the number
  /// from a `target` number. If the leftover number is in the list, it means that
  /// there is the solution. Also, because you may not use the same number twice,
  /// we need to keep the separate record of numbers by index.
  ///
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numsAndIndex = {};

    int index = 0;

    for (final number in nums) {
      final leftOver = target - number;

      if (numsAndIndex.containsKey(leftOver)) {
        return [numsAndIndex[leftOver]!, index];
      }
      numsAndIndex[number] = index;
      index++;
    }

    return [];
  }
}

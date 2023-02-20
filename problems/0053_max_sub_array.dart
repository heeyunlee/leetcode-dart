import 'dart:math' as math show max;

import 'main.dart';

extension MaxSubArray on Solution {
  /// https://leetcode.com/problems/maximum-subarray/
  ///
  /// Explanation: Kadane's algorithm (iterative dynamic programming algorithm)
  ///
  /// Initialize the function with `currentSum` and `maxSum` with the first number
  /// in an array. Now, go to the second number and check whether the second number
  /// is bigger or the addition of the first and second is bigger. If the second
  /// number is greater, we mark `currentSum` as as the second number, marking
  /// the starting point of the sub array as the second element. If the addition
  /// of both number is greater, we update `currentSum` with it, marking the starting
  /// point of the max sub array as the first element. Continue to do this until
  /// we reach the end of the list, and we will get the max sub array.
  ///
  /// This method allows us to check whether the negative value is worth keeping
  /// without the need of going through the list twice.
  int maxSubArray(List<int> nums) {
    int currentSum = nums[0];
    int maxSum = nums[0];

    for (int value in nums.sublist(1)) {
      currentSum = math.max(value, currentSum + value);
      maxSum = math.max(maxSum, currentSum);
    }

    return maxSum;
  }
}

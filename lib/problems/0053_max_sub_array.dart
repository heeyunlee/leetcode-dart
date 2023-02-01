import 'dart:math' show max;

int maxSubArray(List<int> nums) {
  int currentSum = nums[0], maxSum = nums[0];

  for (int value in nums.sublist(1)) {
    currentSum = max(value, currentSum + value);
    maxSum = max(maxSum, currentSum);
  }

  return maxSum;
}

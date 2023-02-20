import 'main.dart';

extension CanJump on Solution {
  /// https://leetcode.com/problems/jump-game/
  ///
  /// Explanation: Greedy (keep moving the goal index until it reaches the starting
  /// index)
  ///
  /// The goal of this problem is to see if you can reach the end of the list
  /// starting from the first index. You can solve the problem recursively, but
  /// the time complexity will reach n^2, so we can try to find a better solution.
  /// Instead of starting from the first index, we can start from the last and move
  /// backwards.
  ///
  /// We know that if the given position——let's say `k`——can reach the end, that
  /// also means that if the indexes on the left can reach `k`, it can reach the
  /// end. With this assumption, we can keep moving the `k` to the left until
  /// we're done iterating the list. By the end, if the `k` is equal to 0, it
  /// means that the starting index can reach the end, and vice versa.
  ///
  bool canJump(List<int> nums) {
    int goal = nums.length - 1;

    for (int i = nums.length - 1; i >= 0; i--) {
      if (i + nums[i] >= goal) {
        goal = i;
      }
    }

    return goal == 0;
  }
}

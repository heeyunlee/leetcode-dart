import 'dart:math' show max, min;

import 'main.dart';

extension TrappingRainWater on Solution {
  /// https://leetcode.com/problems/trapping-rain-water/
  ///
  /// Explanation: Dynamic Programming
  ///
  /// Iterate the list twice, one starting from the left and the one starting from
  /// the right. This allows us to find how much the water would be filled if the
  /// water was flowing from the left and right, respectively. The intertection
  /// of these two will be the water trapped if it were to drop from the top.
  int trap(List<int> height) {
    final length = height.length;

    if (length < 3) {
      return 0;
    }

    final leftMax = List.filled(length, 0, growable: false);
    final rightMax = List.filled(length, 0, growable: false);
    int ans = 0;

    leftMax[0] = height[0];

    for (int i = 1; i < length; i++) {
      leftMax[i] = max(leftMax[i - 1], height[i]);
    }

    rightMax.last = height.last;

    for (int i = length - 2; i > -1; i--) {
      rightMax[i] = max(rightMax[i + 1], height[i]);
    }

    for (int i = 0; i < length; i++) {
      ans += min(leftMax[i], rightMax[i]) - height[i];
    }

    return ans;
  }
}

import 'dart:math' as math;

/// https://leetcode.com/problems/container-with-most-water
///
/// Explanation: Two Pointer Approach
///
/// In this question, the area is calculated by the width (right - left) * shorter
/// height of the left or right. Therefore, we create two pointers that point to
/// left and right line, which initially points to the first and last element,
/// respectively. We gradually move the pointer of the shorter line inward and
/// calculates the area. At the end, when the left and right pointer is equal,
/// it would mean that we have calculated all possible areas, and we will be able
/// to show max area.
class Solution11 {
  int maxArea(List<int> height) {
    int maxArea = 0;
    int left = 0;
    int right = height.length - 1;

    while (left < right) {
      final int width = right - left;
      final int leftHeight = height[left];
      final int rightHeight = height[right];

      maxArea = math.max(maxArea, math.min(leftHeight, rightHeight) * width);

      if (leftHeight <= rightHeight) {
        left++;
      } else {
        right--;
      }
    }

    return maxArea;
  }
}

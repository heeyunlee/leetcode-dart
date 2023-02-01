import 'dart:math' show max, min;

int trappingRainWater(List<int> height) {
  final length = height.length;

  if (length < 3) {
    return 0;
  }

  final leftMax = List.generate(length, (index) => 0);
  List<int> rightMax = List.generate(length, (index) => 0);
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

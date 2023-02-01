List<int> twoSum2(List<int> nums, int target) {
  int l = 0;
  int r = nums.length - 1;

  while (l < r) {
    final sum = nums[l] + nums[r];

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

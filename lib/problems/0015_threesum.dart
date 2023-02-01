List<List<int>> threesum(List<int> nums) {
  if (nums.length < 3) {
    return [];
  }

  nums.sort();
  List<List<int>> result = [];

  for (int i = 0; i < nums.length; i++) {
    if (i > 1 && nums[i] == nums[i - 1]) continue;

    int l = i + 1, r = nums.length - 1;

    while (l < r) {
      final threesum = nums[i] + nums[l] + nums[r];

      if (threesum == 0) {
        result.add([nums[i], nums[l], nums[r]]);

        l++;
        r--;

        while (l < r && nums[l] == nums[l + 1]) {
          l++;
        }
      } else if (threesum > 0) {
        r--;
      } else {
        l++;
      }
    }
  }

  return result;
}

import 'main.dart';

extension ThreeSum on Solution {
  /// https://leetcode.com/problems/3sum/
  ///
  /// Explanation: Following the similar pattern from the two sum problems, we
  /// keep two ponters (`l` and `r`) but also iterate through each number in a
  /// list with the index of `i`. If the sum of all pointers (l, r, and i) equal
  /// to 0, we add the list to the result.
  ///
  /// Also, in order to move the pointers more efficiently, we sort the array at
  /// first.
  List<List<int>> threeSum(List<int> nums) {
    if (nums.length < 3) return [];

    nums.sort();
    List<List<int>> result = [];

    for (int i = 0; i < nums.length - 1; i++) {
      // If i is more than 0, we can break the loop because, with the sorted array,
      // `l` and `r` will always be more than 0, and addition of three positive
      // numbers will always be more than 0.
      if (nums[i] > 0) {
        break;
      }

      // Also, we contiue only if current index is 0 OR if the last value is not
      // same as the current value. This prevents from getting result such as
      // [[0,0,0], [0,0,0]] with the input of [0,0,0,0].
      if (i == 0 || nums[i] != nums[i - 1]) {
        int l = i + 1;
        int r = nums.length - 1;

        while (l < r) {
          final sum = nums[i] + nums[l] + nums[r];

          if (sum > 0) {
            r--;
          } else if (sum < 0) {
            l++;
          } else {
            result.add([nums[i], nums[l], nums[r]]);
            l++;
            r--;

            while (l < r && nums[l] == nums[l - 1]) {
              l++;
            }
          }
        }
      }
    }

    return result;
  }
}

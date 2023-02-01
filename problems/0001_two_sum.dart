/// https://leetcode.com/problems/two-sum/
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

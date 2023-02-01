void moveZeros(List<int> nums) {
  int sizeOfZeros = 0;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == 0) {
      sizeOfZeros++;
    } else if (sizeOfZeros > 0) {
      int temp = nums[i];
      nums[i] = 0;
      nums[i - sizeOfZeros] = temp;
    }
  }
}

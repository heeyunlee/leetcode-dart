import 'dart:math' show max, min;

/// https://leetcode.com/problems/median-of-two-sorted-arrays/
double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
  /// Making arr1 to the smaller than arr2
  if (nums1.length > nums2.length) {
    return findMedianSortedArrays(nums2, nums1);
  }

  int arr1Len = nums1.length;
  int arr2Len = nums2.length;
  int left = 0, right = arr1Len;

  while (left <= right) {
    final arr1LeftLen = (left + right) ~/ 2;
    final arr2LeftLen = (arr1Len + arr2Len + 1) ~/ 2 - arr1LeftLen;

    final arr1LeftMax =
        (arr1LeftLen > 0) ? nums1[arr1LeftLen - 1] : double.negativeInfinity;
    final arr1RightMin =
        (arr1LeftLen < arr1Len) ? nums1[arr1LeftLen] : double.infinity;
    final arr2LeftMax =
        (arr2LeftLen > 0) ? nums2[arr2LeftLen - 1] : double.negativeInfinity;
    final arr2RightMin =
        (arr2LeftLen < arr2Len) ? nums2[arr2LeftLen] : double.infinity;

    if (arr1LeftMax <= arr2RightMin && arr2LeftMax <= arr1RightMin) {
      if ((arr1Len + arr2Len) % 2 == 1) {
        return max<double>(arr1LeftMax.toDouble(), arr2LeftMax.toDouble());
      } else {
        return (max(arr1LeftMax, arr2LeftMax) +
                min(arr1RightMin, arr2RightMin)) /
            2;
      }
    } else if (arr1LeftMax > arr2RightMin) {
      right = arr1LeftLen - 1;
    } else {
      left = arr1LeftLen + 1;
    }
  }
  return 0;
}

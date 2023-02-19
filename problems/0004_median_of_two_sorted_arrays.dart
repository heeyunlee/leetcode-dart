import 'dart:math' show max, min;

import 'main.dart';

extension FindMedianSortedArrays on Solution {
  /// https://leetcode.com/problems/median-of-two-sorted-arrays/
  ///
  /// Explanation: Binary Search with two partitions.
  ///
  /// Uses binary search to find the correct partition of the two lists that
  /// separates the left and right halves of the merged list. The left halves of
  /// the two lists will contain a total of (m+n+1)/2 elements, where m and n
  /// are the lengths of the two lists. The median can then be found by taking
  /// the maximum of the left halves of the two lists if the merged list has an
  /// odd number of elements, or the average of the maximum of the left halves
  /// and the minimum of the right halves if the merged list has an even number
  /// of elements.
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    /// Making arr1 to the smaller than arr2 to reduce edge cases.
    if (nums1.length > nums2.length) {
      return findMedianSortedArrays(nums2, nums1);
    }

    int nums1Len = nums1.length;
    int nums2Len = nums2.length;
    int start = 0;
    int end = nums1Len;

    while (start <= end) {
      final nums1Partition = (start + end) ~/ 2;
      final nums2Partition = (nums1Len + nums2Len + 1) ~/ 2 - nums1Partition;

      final nums1LeftMax = (nums1Partition > 0)
          ? nums1[nums1Partition - 1]
          : double.negativeInfinity;
      final nums1RightMin =
          (nums1Partition < nums1Len) ? nums1[nums1Partition] : double.infinity;
      final nums2LeftMax = (nums2Partition > 0)
          ? nums2[nums2Partition - 1]
          : double.negativeInfinity;
      final nums2RightMin =
          (nums2Partition < nums2Len) ? nums2[nums2Partition] : double.infinity;

      if (nums1LeftMax <= nums2RightMin && nums2LeftMax <= nums1RightMin) {
        if ((nums1Len + nums2Len) % 2 == 1) {
          return max<double>(nums1LeftMax.toDouble(), nums2LeftMax.toDouble());
        } else {
          return (max(nums1LeftMax, nums2LeftMax) +
                  min(nums1RightMin, nums2RightMin)) /
              2;
        }
      } else if (nums1LeftMax > nums2RightMin) {
        end = nums1Partition - 1;
      } else {
        start = nums1Partition + 1;
      }
    }
    return 0;
  }
}

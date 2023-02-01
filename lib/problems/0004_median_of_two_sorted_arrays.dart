import 'dart:math' show max, min;

num findMedianSortedArrays(List<int> arr1, List<int> arr2) {
  /// Making arr1 to the smaller than arr2
  if (arr1.length > arr2.length) {
    return findMedianSortedArrays(arr2, arr1);
  }

  int arr1Len = arr1.length;
  int arr2Len = arr2.length;
  int left = 0, right = arr1Len;

  while (left <= right) {
    final arr1LeftLen = (left + right) ~/ 2;
    final arr2LeftLen = (arr1Len + arr2Len + 1) ~/ 2 - arr1LeftLen;

    final arr1LeftMax =
        (arr1LeftLen > 0) ? arr1[arr1LeftLen - 1] : double.negativeInfinity;
    final arr1RightMin =
        (arr1LeftLen < arr1Len) ? arr1[arr1LeftLen] : double.infinity;
    final arr2LeftMax =
        (arr2LeftLen > 0) ? arr2[arr2LeftLen - 1] : double.negativeInfinity;
    final arr2RightMin =
        (arr2LeftLen < arr2Len) ? arr2[arr2LeftLen] : double.infinity;

    if (arr1LeftMax <= arr2RightMin && arr2LeftMax <= arr1RightMin) {
      if ((arr1Len + arr2Len) % 2 == 1) {
        return max(arr1LeftMax, arr2LeftMax);
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

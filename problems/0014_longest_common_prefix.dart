class Solution14 {
  /// https://leetcode.com/problems/longest-common-prefix/
  ///
  /// Explanation: Horizontal Scanning
  ///
  /// Iterate through each element in [strs]. Find the common prefix starting
  /// from the first two elements, compaire the found LCP with the third element
  /// to find LCP, and so on.
  String longestCommonPrefix(List<String> strs) {
    String commonPrefix = strs.first;

    for (int index = 1; index < strs.length; index++) {
      while (strs[index].indexOf(commonPrefix) != 0) {
        commonPrefix = commonPrefix.substring(0, commonPrefix.length - 1);
        if (commonPrefix.isEmpty) return '';
      }
    }

    return commonPrefix;
  }
}

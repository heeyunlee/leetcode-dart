import 'dart:math' show max;

import 'main.dart';

extension MergeIntervals on Solution {
  /// https://leetcode.com/problems/merge-intervals/
  ///
  /// Explanation: Sorting
  ///
  /// First, sort the intervals based on the starting position and create an
  /// empty intervals that will be filled with merged intervals. Now, while iterating
  /// through all items in a list, add the item to the new list IF:
  /// - The new interval list is empty OR
  /// - The last element's range does not overlap with the item
  ///
  /// If the last element's range overlaps the current item's range, we can see
  /// if we can update the ending range of the last element.
  ///
  List<List<int>> mergeIntervals(List<List<int>> intervals) {
    intervals.sort(((a, b) => a[0].compareTo(b[0])));

    List<List<int>> newIntervals = [];

    for (List<int> item in intervals) {
      if (newIntervals.isEmpty || newIntervals.last[1] < item[0]) {
        newIntervals.add(item);
      } else {
        newIntervals.last[1] = max(newIntervals.last[1], item[1]);
      }
    }

    return newIntervals;
  }
}

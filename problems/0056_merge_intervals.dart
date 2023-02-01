import 'dart:math' show max;

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

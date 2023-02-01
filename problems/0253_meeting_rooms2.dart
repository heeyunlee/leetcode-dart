import 'dart:math' show min;

int minMeetingRooms(List<List<int>> intervals) {
  intervals.sort((a, b) => a[0].compareTo(b[0]));
  List<int> roomsWithEndingTime = [intervals[0][1]];

  for (List<int> interval in intervals.sublist(1)) {
    final earliestEnding = roomsWithEndingTime.reduce(min);

    if (earliestEnding <= interval[0]) {
      roomsWithEndingTime.remove(earliestEnding);
    }

    roomsWithEndingTime.add(interval[1]);
  }

  return roomsWithEndingTime.length;
}

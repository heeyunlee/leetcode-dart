bool canAttendMeetings(List<List<int>> intervals) {
  intervals.sort(((a, b) => a[0].compareTo(b[0])));

  int l = 0, r = intervals.length - 1;

  while (l < r) {
    bool canAttendFirstMeeting = intervals[l][1] <= intervals[l + 1][0];
    bool canAttendLastMetting = intervals[r - 1][1] <= intervals[r][0];

    if (canAttendFirstMeeting && canAttendLastMetting) {
      l++;
      r--;
    } else {
      return false;
    }
  }

  return true;
}

void rotateArray(List<int> list, int r) {
  final l = list.length;
  List<int> newList = List.filled(l, 0);

  for (int i = 0; i < l; i++) {
    newList[(i + r) % l] = list[i];
  }

  list = newList;
}

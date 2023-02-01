String minRemoveToMakeValid(String string) {
  List<String> list = string.split('');
  List<int> indexStack = [];

  for (int i = 0; i < list.length; i++) {
    final char = list[i];

    if (char == '(') {
      indexStack.add(i);
    } else if (char == ')') {
      if (indexStack.isNotEmpty) {
        indexStack.removeLast();
      } else {
        list[i] = '';
      }
    }
  }

  while (indexStack.isNotEmpty) {
    list[indexStack.last] = '';
    indexStack.removeLast();
  }

  return list.join();
}

bool isValidParentheses(String s) {
  final open = ['(', '{', '['];
  final close = [')', '}', ']'];
  final match = {')': '(', '}': '{', ']': '['};
  List<String> stack = [];
  final sList = s.split('');

  for (String char in sList) {
    if (open.contains(char)) {
      stack.add(char);
    } else if (close.contains(char)) {
      if (stack.isNotEmpty) {
        if (stack.last == match[char]) {
          stack.removeLast();
        } else {
          return false;
        }
      } else {
        return false;
      }
    }
  }

  if (stack.isEmpty) {
    return true;
  } else {
    return false;
  }
}

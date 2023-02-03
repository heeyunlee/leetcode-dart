/// https://leetcode.com/problems/valid-parentheses/
///
/// Explanation: For the input to have a valid parenthese, the open brackets must
/// be closed by the same type of brackets AND in the correct order. Therefore,
/// we can keep track of every open brackets that appear, and whenever the close
/// bracket appears, we can check if the matching open bracket exists. If not,
/// it means the string does not have a valid parentheses.
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

  return stack.isEmpty;
}

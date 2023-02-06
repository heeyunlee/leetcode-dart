/// https://leetcode.com/problems/fizz-buzz/
class Solution412 {
  List<String> fizzBuzz(int n) {
    return List<String>.generate(n, (index) {
      if ((index + 1) % 15 == 0) return 'FizzBuzz';
      if ((index + 1) % 5 == 0) return 'Buzz';
      if ((index + 1) % 3 == 0) return 'Fizz';
      return (index + 1).toString();
    });
  }
}

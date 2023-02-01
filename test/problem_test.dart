import 'package:flutter_test/flutter_test.dart';
import '../problems/0001_two_sum.dart';
import '../problems/0002_add_two_numbers.dart';
import '../problems/0003_longest_substring_without_repeating_char.dart';
import '../problems/0009_palindrome_number.dart';
import '../problems/0013_roman_to_integer.dart';
import '../problems/1071_greatest_common_divisor_of_strings.dart';

void main() {
  group('1. Two Sum', () {
    test('Case 1', () {
      final result = twoSum([2, 7, 11, 15], 9);
      expect(result, [0, 1]);
    });

    test('Case 2', () {
      final result = twoSum([3, 2, 4], 6);
      expect(result, [1, 2]);
    });

    test('Case 3', () {
      final result = twoSum([3, 3], 6);
      expect(result, [0, 1]);
    });
  });

  group('2. Add Two Numbers', () {
    test('Case 1', () {
      final result = addTwoNumbers(
        ListNode(2, ListNode(4, ListNode(3))),
        ListNode(5, ListNode(6, ListNode(4))),
      );

      expect(
        result?.toString(),
        ListNode(7, ListNode(0, ListNode(8))).toString(),
      );
    });

    test('Case 2', () {
      final result = addTwoNumbers(ListNode(), ListNode());
      expect(result.toString(), ListNode().toString());
    });

    test('Case 3', () {
      final result = addTwoNumbers(
        ListNode(
            9,
            ListNode(
                9,
                ListNode(
                    9, ListNode(9, ListNode(9, ListNode(9, ListNode(9))))))),
        ListNode(9, ListNode(9, ListNode(9, ListNode(9)))),
      );
      expect(
          result.toString(),
          ListNode(
                  8,
                  ListNode(
                      9,
                      ListNode(
                          9,
                          ListNode(
                              9,
                              ListNode(
                                  0, ListNode(0, ListNode(0, ListNode(1))))))))
              .toString());
    });
  });

  group('3. Longest Substring Without Repeating Characters', () {
    test('Case 1', () {
      final result = lengthOfLongestSubstring('abcabcbb');
      expect(result, 3);
    });

    test('Case 2', () {
      final result = lengthOfLongestSubstring('bbbbb');
      expect(result, 1);
    });

    test('Case 3', () {
      final result = lengthOfLongestSubstring('pwwkew');
      expect(result, 3);
    });
  });

  group('9. Palindrome Number', () {
    test('Case 1', () {
      expect(isPalindrome(121), true);
    });

    test('Case 2', () {
      expect(isPalindrome(-121), false);
    });

    test('Case 3', () {
      expect(isPalindrome(10), false);
    });
  });

  group('13. Roman to Integer', () {
    test('Case 1', () {
      final result = romanToInt('III');
      expect(result, 3);
    });

    test('Case 2', () {
      final result = romanToInt('LVIII');
      expect(result, 58);
    });

    test('Case 3', () {
      final result = romanToInt('MCMXCIV');
      expect(result, 1994);
    });
  });

  group('1071. Greatest Common Divisor of Strings', () {
    test('Case 1', () {
      final result = gcdOfStrings('ABCABC', 'ABC');
      expect(result, 'ABC');
    });

    test('Case 2', () {
      final result = gcdOfStrings('ABABAB', 'ABAB');
      expect(result, 'AB');
    });

    test('Case 3', () {
      final result = gcdOfStrings('LEET', 'CODE');
      expect(result, '');
    });
  });
}

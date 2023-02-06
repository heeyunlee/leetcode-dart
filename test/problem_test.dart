import 'package:flutter_test/flutter_test.dart';
import '../problems/0001_two_sum.dart';
import '../problems/0002_add_two_numbers.dart';
import '../problems/0003_longest_substring_without_repeating_char.dart';
import '../problems/0004_median_of_two_sorted_arrays.dart';
import '../problems/0005_longest_palindromic_substring.dart';
import '../problems/0009_palindrome_number.dart';
import '../problems/0013_roman_to_integer.dart';
import '../problems/0015_threesum.dart';
import '../problems/0019_remove_nth_node_from_end_of_list.dart' as nineteen;
import '../problems/0020_valid_parentheses.dart';
import '../problems/0412._fizz_buzz.dart';
import '../problems/0438._find_all_anagrams_in_a_string.dart';
import '../problems/1071_greatest_common_divisor_of_strings.dart';
import '../problems/1207_unique_number_of_occurrences.dart';

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
              9,
              ListNode(
                9,
                ListNode(
                  9,
                  ListNode(
                    9,
                    ListNode(9),
                  ),
                ),
              ),
            ),
          ),
        ),
        ListNode(
          9,
          ListNode(
            9,
            ListNode(
              9,
              ListNode(9),
            ),
          ),
        ),
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
                    0,
                    ListNode(
                      0,
                      ListNode(
                        0,
                        ListNode(1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ).toString());
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

  group('4. Median of Two Sorted Arrays', () {
    test('Case 1', () {
      final result = findMedianSortedArrays([1, 3], [2]);
      expect(result, 2);
    });

    test('Case 2', () {
      final result = findMedianSortedArrays([1, 2], [3, 4]);
      expect(result, 2.5);
    });
  });

  group('5. Longest Palindromic Substring', () {
    test('Case 1', () {
      final result = longestPalindromeSubstring('babad');
      expect(result, 'bab');
    });

    test('Case 2', () {
      final result = longestPalindromeSubstring('cbbd');
      expect(result, 'bb');
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

  group('15. 3Sum', () {
    test('Case 1', () {
      final result = threesum([-1, 0, 1, 2, -1, -4]);
      expect(result, [
        [-1, -1, 2],
        [-1, 0, 1]
      ]);
    });

    test('Case 2', () {
      final result = threesum([0, 1, 1]);
      expect(result, []);
    });

    test('Case 3', () {
      final result = threesum([0, 0, 0]);
      expect(result, [
        [0, 0, 0]
      ]);
    });
  });

  group('19. Remove Nth Node From End of List', () {
    test('Case 1', () {
      final result = nineteen.removeNthNodeFromEnd(
        nineteen.ListNode(
          1,
          nineteen.ListNode(
            2,
            nineteen.ListNode(
              3,
              nineteen.ListNode(
                4,
                nineteen.ListNode(5),
              ),
            ),
          ),
        ),
        2,
      );

      expect(
        result.toString(),
        nineteen.ListNode(
          1,
          nineteen.ListNode(
            2,
            nineteen.ListNode(
              3,
              nineteen.ListNode(5),
            ),
          ),
        ).toString(),
      );
    });

    test('Case 2', () {
      final result = nineteen.removeNthNodeFromEnd(nineteen.ListNode(), 1);
      expect(result.toString(), null.toString());
    });

    test('Case 3', () {
      final result = nineteen.removeNthNodeFromEnd(
        nineteen.ListNode(1, nineteen.ListNode(2)),
        1,
      );

      expect(result.toString(), nineteen.ListNode(1).toString());
    });
  });

  group('20. Valid Parentheses', () {
    test('Case 1', () {
      final result = isValidParentheses('()');
      expect(result, true);
    });

    test('Case 2', () {
      final result = isValidParentheses('()[]{}');
      expect(result, true);
    });

    test('Case 3', () {
      final result = isValidParentheses('(]');
      expect(result, false);
    });
  });

  group('412. Fizz Buzz', () {
    final solution = Solution412();

    test('Case 1', () {
      expect(solution.fizzBuzz(3), ['1', '2', 'Fizz']);
    });

    test('Case 2', () {
      expect(solution.fizzBuzz(5), ['1', '2', 'Fizz', '4', 'Buzz']);
    });

    test('Case 3', () {
      expect(
        solution.fizzBuzz(15),
        [
          '1',
          '2',
          'Fizz',
          '4',
          'Buzz',
          'Fizz',
          '7',
          '8',
          'Fizz',
          'Buzz',
          '11',
          'Fizz',
          '13',
          '14',
          'FizzBuzz'
        ],
      );
    });
  });

  group('438. Find All Anagrams in a String', () {
    final solution = Solution438();

    test('Case 1', () {
      final result = solution.findAnagrams('cbaebabacd', 'abc');
      expect(result, [0, 6]);
    });

    test('Case 2', () {
      final result = solution.findAnagrams('abab', 'ab');
      expect(result, [0, 1, 2]);
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

  group('1207. Unique Number of Occurrences', () {
    test('Case 1', () {
      final result = uniqueOccurrences([1, 2, 2, 1, 1, 3]);
      expect(result, true);
    });

    test('Case 2', () {
      final result = uniqueOccurrences([1, 2]);
      expect(result, false);
    });

    test('Case 3', () {
      final result = uniqueOccurrences([-3, 0, 1, -3, 1, 1, 1, -3, 10, 0]);
      expect(result, true);
    });
  });
}

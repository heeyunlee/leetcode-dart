import 'package:flutter_test/flutter_test.dart';
import '../problems/main.dart';
import '../problems/0001_two_sum.dart';
import '../problems/0002_add_two_numbers.dart';
import '../problems/0003_longest_substring_without_repeating_char.dart';
import '../problems/0004_median_of_two_sorted_arrays.dart';
import '../problems/0005_longest_palindromic_substring.dart';
import '../problems/0009_palindrome_number.dart';
import '../problems/0011_container_with_most_water.dart';
import '../problems/0013_roman_to_integer.dart';
import '../problems/0014_longest_common_prefix.dart';
import '../problems/0015_threesum.dart';
import '../problems/0019_remove_nth_node_from_end_of_list.dart';
import '../problems/0020_valid_parentheses.dart';
import '../problems/0167_two_sum_2.dart';
import '../problems/0412._fizz_buzz.dart';
import '../problems/0438._find_all_anagrams_in_a_string.dart';
import '../problems/1071_greatest_common_divisor_of_strings.dart';
import '../problems/1207_unique_number_of_occurrences.dart';
import '../problems/list_node.dart';

void main() {
  final solution = Solution();
  group('1. Two Sum', () {
    test('Case 1', () {
      final result = solution.twoSum([2, 7, 11, 15], 9);
      expect(result, [0, 1]);
    });

    test('Case 2', () {
      final result = solution.twoSum([3, 2, 4], 6);
      expect(result, [1, 2]);
    });

    test('Case 3', () {
      final result = solution.twoSum([3, 3], 6);
      expect(result, [0, 1]);
    });
  });

  group('2. Add Two Numbers', () {
    test('Case 1', () {
      final result = solution.addTwoNumbers(
        ListNode(2, ListNode(4, ListNode(3))),
        ListNode(5, ListNode(6, ListNode(4))),
      );

      expect(
        result?.toString(),
        ListNode(7, ListNode(0, ListNode(8))).toString(),
      );
    });

    test('Case 2', () {
      final result = solution.addTwoNumbers(ListNode(), ListNode());
      expect(result.toString(), ListNode().toString());
    });

    test('Case 3', () {
      final result = solution.addTwoNumbers(
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
      final result = solution.lengthOfLongestSubstring('abcabcbb');
      expect(result, 3);
    });

    test('Case 2', () {
      final result = solution.lengthOfLongestSubstring('bbbbb');
      expect(result, 1);
    });

    test('Case 3', () {
      final result = solution.lengthOfLongestSubstring('pwwkew');
      expect(result, 3);
    });
  });

  group('4. Median of Two Sorted Arrays', () {
    test('Case 1', () {
      final result = solution.findMedianSortedArrays([1, 3], [2]);
      expect(result, 2);
    });

    test('Case 2', () {
      final result = solution.findMedianSortedArrays([1, 2], [3, 4]);
      expect(result, 2.5);
    });
  });

  group('5. Longest Palindromic Substring', () {
    test('Case 1', () {
      final result = solution.longestPalindrome('babad');
      expect(result, 'aba');
    });

    test('Case 2', () {
      final result = solution.longestPalindrome('cbbd');
      expect(result, 'bb');
    });
  });

  group('9. Palindrome Number', () {
    test('Case 1', () {
      expect(solution.isPalindrome(121), true);
    });

    test('Case 2', () {
      expect(solution.isPalindrome(-121), false);
    });

    test('Case 3', () {
      expect(solution.isPalindrome(10), false);
    });
  });

  group('11. Container With Most Water', () {
    test('Case 1', () {
      final result = solution.maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]);
      expect(result, 49);
    });

    test('Case 2', () {
      final result = solution.maxArea([1, 1]);
      expect(result, 1);
    });
  });

  group('13. Roman to Integer', () {
    test('Case 1', () {
      final result = solution.romanToInt('III');
      expect(result, 3);
    });

    test('Case 2', () {
      final result = solution.romanToInt('LVIII');
      expect(result, 58);
    });

    test('Case 3', () {
      final result = solution.romanToInt('MCMXCIV');
      expect(result, 1994);
    });
  });

  group('14. Longest Common Prefix', () {
    test('Case 1', () {
      expect(
        solution.longestCommonPrefix(['flower', 'flow', 'flight']),
        'fl',
      );
    });

    test('Case 2', () {
      expect(
        solution.longestCommonPrefix(['dog', 'racecar', 'car']),
        '',
      );
    });
  });

  group('15. 3Sum', () {
    test('Case 1', () {
      final result = solution.threeSum([-1, 0, 1, 2, -1, -4]);
      expect(result, [
        [-1, -1, 2],
        [-1, 0, 1]
      ]);
    });

    test('Case 2', () {
      final result = solution.threeSum([0, 1, 1]);
      expect(result, []);
    });

    test('Case 3', () {
      final result = solution.threeSum([0, 0, 0]);
      expect(result, [
        [0, 0, 0]
      ]);
    });

    test('Case 4', () {
      final result = solution.threeSum([-2, 0, 1, 1, 2]);
      expect(
        result,
        [
          [-2, 0, 2],
          [-2, 1, 1],
        ],
      );
    });
  });

  group('19. Remove Nth Node From End of List', () {
    test('Case 1', () {
      final result = solution.removeNthNodeFromEnd(
        ListNode(
          1,
          ListNode(
            2,
            ListNode(
              3,
              ListNode(
                4,
                ListNode(5),
              ),
            ),
          ),
        ),
        2,
      );

      expect(
        result.toString(),
        ListNode(
          1,
          ListNode(
            2,
            ListNode(
              3,
              ListNode(5),
            ),
          ),
        ).toString(),
      );
    });

    test('Case 2', () {
      final result = solution.removeNthNodeFromEnd(ListNode(), 1);
      expect(result.toString(), null.toString());
    });

    test('Case 3', () {
      final result = solution.removeNthNodeFromEnd(ListNode(1, ListNode(2)), 1);

      expect(result.toString(), ListNode(1).toString());
    });
  });

  group('20. Valid Parentheses', () {
    test('Case 1', () {
      final result = solution.isValidParentheses('()');
      expect(result, true);
    });

    test('Case 2', () {
      final result = solution.isValidParentheses('()[]{}');
      expect(result, true);
    });

    test('Case 3', () {
      final result = solution.isValidParentheses('(]');
      expect(result, false);
    });
  });

  group('167. Two Sum II - Input Array Is Sorted', () {
    test('Case 1', () {
      final result = solution.twoSum2([2, 7, 11, 15], 9);
      expect(result, [1, 2]);
    });

    test('Case 2', () {
      final result = solution.twoSum2([2, 3, 4], 6);
      expect(result, [1, 3]);
    });

    test('Case 3', () {
      final result = solution.twoSum2([-1, 0], -1);
      expect(result, [1, 2]);
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

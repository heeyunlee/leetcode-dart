import 'package:flutter_test/flutter_test.dart';
import '../problems/0021_merge_two_sorted_lists.dart';
import '../problems/0042_trapping_rain_water.dart';
import '../problems/0053_max_sub_array.dart';
import '../problems/0055_jump_game_1.dart';
import '../problems/0056_merge_intervals.dart';
import '../problems/0066_plus_one.dart';
import '../problems/0069_sqrt_x.dart';
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
      final actual = solution.twoSum([2, 7, 11, 15], 9);
      expect(actual, [0, 1]);
    });

    test('Case 2', () {
      final actual = solution.twoSum([3, 2, 4], 6);
      expect(actual, [1, 2]);
    });

    test('Case 3', () {
      final actual = solution.twoSum([3, 3], 6);
      expect(actual, [0, 1]);
    });
  });

  group('2. Add Two Numbers', () {
    test('Case 1', () {
      final actual = solution.addTwoNumbers(
        ListNode(2, ListNode(4, ListNode(3))),
        ListNode(5, ListNode(6, ListNode(4))),
      );

      expect(
        actual == ListNode(7, ListNode(0, ListNode(8))),
        true,
      );
    });

    test('Case 2', () {
      final actual = solution.addTwoNumbers(ListNode(), ListNode());
      expect(
        actual == ListNode(),
        true,
      );
    });

    test('Case 3', () {
      final actual = solution.addTwoNumbers(
          ListNode(
              9,
              ListNode(
                  9,
                  ListNode(
                      9, ListNode(9, ListNode(9, ListNode(9, ListNode(9))))))),
          ListNode(9, ListNode(9, ListNode(9, ListNode(9)))));
      expect(
        actual ==
            ListNode(
                8,
                ListNode(
                    9,
                    ListNode(
                        9,
                        ListNode(
                            9,
                            ListNode(
                                0, ListNode(0, ListNode(0, ListNode(1)))))))),
        true,
      );
    });
  });

  group('3. Longest Substring Without Repeating Characters', () {
    test('Case 1', () {
      final actual = solution.lengthOfLongestSubstring('abcabcbb');
      expect(actual, 3);
    });

    test('Case 2', () {
      final actual = solution.lengthOfLongestSubstring('bbbbb');
      expect(actual, 1);
    });

    test('Case 3', () {
      final actual = solution.lengthOfLongestSubstring('pwwkew');
      expect(actual, 3);
    });
  });

  group('4. Median of Two Sorted Arrays', () {
    test('Case 1', () {
      final actual = solution.findMedianSortedArrays([1, 3], [2]);
      expect(actual, 2);
    });

    test('Case 2', () {
      final actual = solution.findMedianSortedArrays([1, 2], [3, 4]);
      expect(actual, 2.5);
    });
  });

  group('5. Longest Palindromic Substring', () {
    test('Case 1', () {
      final actual = solution.longestPalindrome('babad');
      expect(actual, 'aba');
    });

    test('Case 2', () {
      final actual = solution.longestPalindrome('cbbd');
      expect(actual, 'bb');
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
      final actual = solution.maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]);
      expect(actual, 49);
    });

    test('Case 2', () {
      final actual = solution.maxArea([1, 1]);
      expect(actual, 1);
    });
  });

  group('13. Roman to Integer', () {
    test('Case 1', () {
      final actual = solution.romanToInt('III');
      expect(actual, 3);
    });

    test('Case 2', () {
      final actual = solution.romanToInt('LVIII');
      expect(actual, 58);
    });

    test('Case 3', () {
      final actual = solution.romanToInt('MCMXCIV');
      expect(actual, 1994);
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
      final actual = solution.threeSum([-1, 0, 1, 2, -1, -4]);
      expect(actual, [
        [-1, -1, 2],
        [-1, 0, 1]
      ]);
    });

    test('Case 2', () {
      final actual = solution.threeSum([0, 1, 1]);
      expect(actual, []);
    });

    test('Case 3', () {
      final actual = solution.threeSum([0, 0, 0]);
      expect(actual, [
        [0, 0, 0]
      ]);
    });

    test('Case 4', () {
      final actual = solution.threeSum([-2, 0, 1, 1, 2]);
      expect(
        actual,
        [
          [-2, 0, 2],
          [-2, 1, 1],
        ],
      );
    });
  });

  group('19. Remove Nth Node From End of List', () {
    test('Case 1', () {
      final actual = solution.removeNthNodeFromEnd(
        ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))),
        2,
      );

      expect(
        actual == ListNode(1, ListNode(2, ListNode(3, ListNode(5)))),
        true,
      );
    });

    test('Case 2', () {
      final actual = solution.removeNthNodeFromEnd(ListNode(), 1);
      expect(actual == null, true);
    });

    test('Case 3', () {
      final actual = solution.removeNthNodeFromEnd(ListNode(1, ListNode(2)), 1);

      expect(actual == ListNode(1), true);
    });
  });

  group('20. Valid Parentheses', () {
    test('Case 1', () {
      final actual = solution.isValidParentheses('()');
      expect(actual, true);
    });

    test('Case 2', () {
      final actual = solution.isValidParentheses('()[]{}');
      expect(actual, true);
    });

    test('Case 3', () {
      final actual = solution.isValidParentheses('(]');
      expect(actual, false);
    });
  });

  group('21. Merge Two Sorted Lists', () {
    test('Case 1', () {
      final actual = solution.mergeTwoLists(
        ListNode(1, ListNode(2, ListNode(4))),
        ListNode(1, ListNode(3, ListNode(4))),
      );
      expect(
        actual ==
            ListNode(
                1,
                ListNode(
                    1, ListNode(2, ListNode(3, ListNode(4, ListNode(4)))))),
        true,
      );
    });

    test('Case 2', () {
      final actual = solution.mergeTwoLists(null, null);
      expect(actual == null, true);
    });

    test('Case 3', () {
      final actual = solution.mergeTwoLists(null, ListNode(0));
      expect(actual == ListNode(0), true);
    });
  });

  group('42. Trapping Rain Water', () {
    test('Case 1', () {
      final actual = solution.trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]);
      expect(actual, 6);
    });

    test('Case 2', () {
      final actual = solution.trap([4, 2, 0, 3, 2, 5]);
      expect(actual, 9);
    });
  });

  group('53. Maximum Subarray', () {
    test('Case 1', () {
      final actual = solution.maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]);
      expect(actual, 6);
    });

    test('Case 2', () {
      final actual = solution.maxSubArray([1]);
      expect(actual, 1);
    });

    test('Case 3', () {
      final actual = solution.maxSubArray([5, 4, -1, 7, 8]);
      expect(actual, 23);
    });
  });

  group('55. Jump Game', () {
    test('Case 1', () {
      final actual = solution.canJump([2, 3, 1, 1, 4]);
      expect(actual, true);
    });

    test('Case 2', () {
      final actual = solution.canJump([3, 2, 1, 0, 4]);
      expect(actual, false);
    });
  });

  group('56. Merge Intervals', () {
    test('Case 1', () {
      final actual = solution.mergeIntervals([
        [1, 3],
        [2, 6],
        [8, 10],
        [15, 18]
      ]);
      expect(actual, [
        [1, 6],
        [8, 10],
        [15, 18]
      ]);
    });

    test('Case 2', () {
      final actual = solution.mergeIntervals([
        [1, 4],
        [4, 5]
      ]);
      expect(actual, [
        [1, 5]
      ]);
    });
  });

  group('66. Plus One', () {
    test('Case 1', () {
      final actual = solution.plusOne([1, 2, 3]);
      expect(actual, [1, 2, 4]);
    });

    test('Case 2', () {
      final actual = solution.plusOne([4, 3, 2, 1]);
      expect(actual, [4, 3, 2, 2]);
    });

    test('Case 3', () {
      final actual = solution.plusOne([9]);
      expect(actual, [1, 0]);
    });

    test('Case 4', () {
      final actual = solution.plusOne([9, 9]);
      expect(actual, [1, 0, 0]);
    });
  });

  group('69. Sqrt(x)', () {
    test('Case 1', () {
      final actual = solution.mySqrt(4);
      expect(actual, 2);
    });

    test('Case 2', () {
      final actual = solution.mySqrt(8);
      expect(actual, 2);
    });
  });

  group('167. Two Sum II - Input Array Is Sorted', () {
    test('Case 1', () {
      final actual = solution.twoSum2([2, 7, 11, 15], 9);
      expect(actual, [1, 2]);
    });

    test('Case 2', () {
      final actual = solution.twoSum2([2, 3, 4], 6);
      expect(actual, [1, 3]);
    });

    test('Case 3', () {
      final actual = solution.twoSum2([-1, 0], -1);
      expect(actual, [1, 2]);
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
      final actual = solution.findAnagrams('cbaebabacd', 'abc');
      expect(actual, [0, 6]);
    });

    test('Case 2', () {
      final actual = solution.findAnagrams('abab', 'ab');
      expect(actual, [0, 1, 2]);
    });
  });

  group('1071. Greatest Common Divisor of Strings', () {
    test('Case 1', () {
      final actual = gcdOfStrings('ABCABC', 'ABC');
      expect(actual, 'ABC');
    });

    test('Case 2', () {
      final actual = gcdOfStrings('ABABAB', 'ABAB');
      expect(actual, 'AB');
    });

    test('Case 3', () {
      final actual = gcdOfStrings('LEET', 'CODE');
      expect(actual, '');
    });
  });

  group('1207. Unique Number of Occurrences', () {
    test('Case 1', () {
      final actual = uniqueOccurrences([1, 2, 2, 1, 1, 3]);
      expect(actual, true);
    });

    test('Case 2', () {
      final actual = uniqueOccurrences([1, 2]);
      expect(actual, false);
    });

    test('Case 3', () {
      final actual = uniqueOccurrences([-3, 0, 1, -3, 1, 1, 1, -3, 10, 0]);
      expect(actual, true);
    });
  });
}

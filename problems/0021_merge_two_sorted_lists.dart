import 'list_node.dart';
import 'main.dart';

extension MergeTwoLists on Solution {
  /// https://leetcode.com/problems/merge-two-sorted-lists/
  ///
  /// Explanation: Iteration
  ///
  /// Creates a dummy node that creates a new merged list. Iterate through the
  /// two lists by creating a pointer `current`, and it moves through the entire
  /// items in two lists by pointing to the lowest value. If the value is added
  /// to the new merged list, we remove it from the original list by assigning
  /// `list = list.next`.
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode dummy = ListNode();
    ListNode? current = dummy;

    while (list1 != null && list2 != null) {
      if (list1.val <= list2.val) {
        current?.next = list1;
        list1 = list1.next;
      } else {
        current?.next = list2;
        list2 = list2.next;
      }

      current = current?.next;
    }

    if (list1 == null || list2 == null) {
      current?.next = list1 ?? list2;
    }

    return dummy.next;
  }
}

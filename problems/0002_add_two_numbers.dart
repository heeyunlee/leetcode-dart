import 'main.dart';
import 'list_node.dart';

extension AddTwoNumbers on Solution {
  /// https://leetcode.com/problems/add-two-numbers/
  ///
  /// Explanation: Simply add two linked lists from the starting node. Keep going
  /// until there are no next nodes and carry over number is 0.
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode dummyNode = ListNode();
    ListNode currentNode = dummyNode;
    int currentCarryOver = 0;

    while (l1 != null || l2 != null || currentCarryOver != 0) {
      final currentValue = (l1?.val ?? 0) + (l2?.val ?? 0) + currentCarryOver;
      final newValue = currentValue % 10;
      ListNode newNode = ListNode(newValue);
      currentNode.next = newNode;
      currentNode = newNode;

      currentCarryOver = currentValue ~/ 10;
      l1 = l1?.next;
      l2 = l2?.next;
    }

    return dummyNode.next;
  }
}

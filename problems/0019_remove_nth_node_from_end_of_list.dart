import 'main.dart';
import 'list_node.dart';

extension RemoveNthNodeFromEnd on Solution {
  /// https://leetcode.com/problems/remove-nth-node-from-end-of-list/
  ///
  /// Explanation: Create two pointers (tortoise and hare) and a dummy node that is
  /// in front of every nodes. At first, two pointers will point to the dummy node,
  /// but the pointers will keep pointing to the next node until there is no node
  /// to point. Tortoise will have an nth delay, which means that by the time hare
  /// is pointing to the end node, tortoise will be pointing to the node that the
  /// next node needs to be deleted. At this point, all we have to do is make tortoise.next
  /// to be tortoise.next.next, and tortoise.next would be deleted.
  ListNode? removeNthNodeFromEnd(ListNode? head, int n) {
    ListNode dummy = ListNode();
    dummy.next = head;
    ListNode? tortoise = dummy;
    ListNode? hare = dummy;
    int steps = 0;

    while (hare != null && hare.next != null) {
      if (steps >= n) tortoise = tortoise?.next;
      hare = hare.next;
      steps++;
    }

    tortoise?.next = tortoise.next?.next;

    return dummy.next;
  }
}

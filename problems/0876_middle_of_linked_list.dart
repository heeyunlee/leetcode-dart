import 'list_node.dart';

ListNode? middleNode(ListNode? head) {
  ListNode? tortoise = head, hare = head;

  while (hare != null && hare.next != null) {
    tortoise = tortoise?.next;
    hare = hare.next?.next;
  }

  return tortoise;
}

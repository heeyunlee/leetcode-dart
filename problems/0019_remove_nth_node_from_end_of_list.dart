class ListNode {
  ListNode({
    this.val = 0,
    this.next,
  });

  int val;
  ListNode? next;
}

ListNode? removeNthNodeFromEnd(ListNode? head, int n) {
  ListNode first = ListNode();
  first.next = head;
  ListNode? tortoise = first, hare = first;
  int steps = 0;

  while (hare != null && hare.next != null) {
    if (steps >= n) tortoise = tortoise?.next;
    hare = hare.next;
    steps++;
  }

  tortoise?.next = tortoise.next?.next;

  return first.next;
}

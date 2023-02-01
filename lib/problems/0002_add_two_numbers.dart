class ListNode {
  ListNode([this.val = 0, this.next]);

  int val;
  ListNode? next;

  @override
  String toString() {
    return 'ListNode(val: $val, next: ${next?.toString()})';
  }
}

/// https://leetcode.com/problems/add-two-numbers/
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

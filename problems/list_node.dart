class ListNode {
  ListNode([this.val = 0, this.next]);

  int val;
  ListNode? next;

  @override
  String toString() {
    return 'ListNode(val: $val, next: ${next?.toString()})';
  }
}

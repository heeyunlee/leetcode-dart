class ListNode {
  ListNode([this.val = 0, this.next]);

  int val;
  ListNode? next;

  @override
  int get hashCode => val.hashCode ^ next.hashCode;

  @override
  bool operator ==(covariant ListNode other) {
    if (identical(this, other)) return true;

    return other.runtimeType == ListNode &&
        other.val == val &&
        other.next == next;
  }
}

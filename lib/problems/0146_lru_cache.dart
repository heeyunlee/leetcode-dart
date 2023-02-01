class Node {
  Node({
    required this.key,
    required this.value,
  });

  int key;
  int value;
  Node? prev;
  Node? next;
}

class LRUCache {
  LRUCache({required this.capacity}) : super();

  int capacity;
  Map<int, Node> cache = {};
  Node head = Node(key: 0, value: 0);
  Node tail = Node(key: 0, value: 0);
}

import 'dart:collection';

class RecentCounter {
  Queue<int> queue = Queue<int>();

  RecentCounter();
  
  int ping(int t) {
    queue.add(t);

    while (queue.isNotEmpty && t - 3000 > queue.first) {
        queue.removeFirst();
    }

    return queue.length;
  }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = RecentCounter();
 * int param1 = obj.ping(t);
 */
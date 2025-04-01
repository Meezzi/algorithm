/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
    // 포인터 초기화
    var prev = null;
    var current = head;

    // 리스트 뒤집기
    while(current != null) {
        ListNode? temp = current.next;
        current.next = prev;
        prev = current;
        current = temp;
    }

    // 반환
    return prev;
  }
}

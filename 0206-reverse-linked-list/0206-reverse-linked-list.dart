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
    // 반복문을 통해 current 노드의 next를 prev로 변경하여 역방향으로 만듭니다.
    // prev와 current를 다음 노드로 이동하면서 연결을 재설정합니다.
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
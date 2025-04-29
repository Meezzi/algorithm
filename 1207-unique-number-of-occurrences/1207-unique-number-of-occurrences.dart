class Solution {
  bool uniqueOccurrences(List<int> arr) {
    // 요소와 그 요소의 등장 횟수를 저장할 빈 이중 리스트 생성
    List<List<int>> list = [[], []];

    // 배열의 각 요소를 순회
    for (int a in arr) {
      if (list[0].contains(a)) {
        // 이미 list[0]에 요소가 있다면
        // 그 인덱스를 찾아서 list[1] (등장 횟수) 를 1 증가
        int index = list[0].indexOf(a);
        list[1][index]++;
      } else {
        // 요소가 없다면 새로 추가하고 등장 횟수는 1로 설정
        list[0].add(a);
        list[1].add(1);
      }
    }

    // 등장 횟수 리스트를 Set으로 변환 (중복 제거)
    Set<int> listSet = Set<int>.from(list[1]);

    // 등장 횟수 리스트와 Set의 길이를 비교하여
    // 모두 유일하면 true, 아니면 false 반환
    if (list[1].length == listSet.length) {
      return true;
    } else {
      return false;
    }
  }
}

class Solution {
  // Dart 코드
  bool uniqueOccurrences(List<int> arr) {
    // 각 숫자의 등장 횟수를 저장할 Map 생성
    Map<int, int> countMap = {};

    // 배열을 순회하면서 숫자별 등장 횟수 세기
    for (int num in arr) {
        countMap.update(num, (count) => count + 1, ifAbsent: () => 1);
    }

    // 등장 횟수만 따로 모은 Set 생성 (Set은 중복을 허용하지 않음)
    Set<int> occurrenceSet = {};

    for (int count in countMap.values) {
        // 이미 등장한 횟수가 존재하면 false 반환
        if (occurrenceSet.contains(count)) {
            return false;
        }
        occurrenceSet.add(count);
    }

    // 모든 등장 횟수가 유일하면 true 반환
    return true;
  }
}
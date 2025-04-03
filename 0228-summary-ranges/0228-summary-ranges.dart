List<String> summaryRanges(List<int> nums) {
  // 결과를 저장할 리스트
  List<String> result = [];
  int n = nums.length;

  // 배열이 비어있으면 빈 리스트 반환
  if (n == 0) return result; // 가드 패턴

  // 범위 시작점
  int start = nums[0];

  for (int i = 0; i < n; i++) {
    // 마지막 원소이거나 현재 숫자와 다음 숫자가 연속되지 않는 경우
    if (i == n - 1 || nums[i] + 1 != nums[i + 1]) { 
      // 범위가 한 숫자인 경우 
      if (start == nums[i]) {
        result.add(start.toString());
      } else {
        // 범위가 여러 숫자인 경우
        result.add("$start->${nums[i]}"); 
      }
      // 다음 범위의 시작점을 업데이트
      if (i != n - 1) {
        start = nums[i + 1];
      }
    }
  }

  return result;
}
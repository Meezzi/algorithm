class Solution {
  bool isHappy(int n) {
  // 중복 확인을 위한 Set 생성
  Set<int> seen = {};
 
  // 반복해서 숫자의 제곱 합 계산
  while (n != 1 && !seen.contains(n)) {
    seen.add(n);
    n = getSquareSum(n); 
  }

  return n == 1;
}

// 숫자의 각 자리 제곱 합을 계산하는 함수
    int getSquareSum(int num) {
        int sum = 0;
        while (num > 0) {
            int digit = num % 10;       // 현재 자리 숫자
            sum += digit * digit;       // 제곱 합산
            num ~/= 10;                 // 다음 자리로 이동
        }
        return sum;
    }
}
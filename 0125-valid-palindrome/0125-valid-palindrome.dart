class Solution {
  bool isPalindrome(String s) {
  // 알파벳과 숫자만 남기고, 소문자로 변환
  String filtered = '';
  for (var c in s.split('')) {
    if (RegExp(r'[a-zA-Z0-9]').hasMatch(c)) {
      filtered += c.toLowerCase();
    }
  }
  
  // 양쪽 끝에서부터 비교
  int left = 0;
  int right = filtered.length - 1;
  while (left < right) {
    if (filtered[left] != filtered[right]) {
      return false;
    }
    left++;
    right--;
  }
  
  return true;
}

}
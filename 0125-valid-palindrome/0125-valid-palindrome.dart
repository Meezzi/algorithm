class Solution {
  bool isPalindrome(String s) {
  
    // 공복, 특수문자 제거
    String result = s.replaceAll(RegExp('[^a-zA-Z0-9]'), "").toLowerCase();

    int first = 0;
    int end = result.length - 1;

    for (int i = 0; i < result.length / 2; i++) {
      if (result[i] == result[end]) {
        end--;
      } else {
        return false;
      }
    }

    return true;
  }
}
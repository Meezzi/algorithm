class Solution {
  bool isPalindrome(String s) {
  
    // 공복, 특수문자 제거 후, 소문자로 변경
    String result = s.replaceAll(RegExp('[^a-zA-Z0-9]'), "").toLowerCase();

    int first = 0;
    int end = result.length - 1;

    // for문을 이용한 문자열 순회
    // for (int i = 0; i < result.length / 2; i++) {
    //   if (result[i] == result[end]) {
    //     end--;
    //   } else {
    //     return false;
    //   }
    // }

    // while 문을 이용한 문자열 순회
    while(first < end) {
      if(result[first] == result[end]) {
        first++;
        end--;
      } else {
        return false;
      }
    }

    return true;
  }
}
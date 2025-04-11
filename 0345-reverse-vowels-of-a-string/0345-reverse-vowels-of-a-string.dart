class Solution {
  String reverseVowels(String s) {
    List<String> strList = s.split('');
    Set<String> vowels = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};

    int start = 0;
    int end = s.length - 1;

    while (start < end) {
      // 모음이 아닐 경우 포인터 이동
      if (!vowels.contains(strList[start])) {
        start++;
        continue;
      }

      if (!vowels.contains(strList[end])) {
        end--;
        continue;
      }

      // 두 포인터가 모두 모음일 때 스왑
      String tmp = strList[start];
      strList[start] = strList[end];
      strList[end] = tmp;

      start++;
      end--;
    }

    return strList.join('');
  }
}

class Solution {
  String reverseVowels(String s) {
    List<String> strList = s.split('');
    List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];

    // 투포인터
    int start = 0;
    int end = s.length - 1;

    while(start < end) {
        // 모음이 포함되어 있는지 검사하는 변수
        while(start < end && !vowels.contains(strList[start])) {
            start++;
        }

        while(start < end && !vowels.contains(strList[end])) {
            end--;
        }


        if(start < end) {
            String tmp = strList[start];
            strList[start] = strList[end];
            strList[end] = tmp;

            start++;
            end--;
        }
    }

    return strList.join('');
  }
}
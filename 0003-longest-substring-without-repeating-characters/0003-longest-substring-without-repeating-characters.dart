class Solution {
  int lengthOfLongestSubstring(String s) {
    // 각 문자와 마지막 인덱스 저장
    Map<String, int> charIndexMap = {};
    int maxLength = 0;
    int windowStart = 0;

    for(int windowEnd = 0; windowEnd < s.length; windowEnd++) {
        // 현재 확인 중인 문자
        String currentChar = s[windowEnd];

        // 만약 해당 문자가 이미 등장했고, 현재 윈도우 내에 있다면
        // 중복이 발생한 것이므로 윈도우 시작 인덱스를 중복 다음으로 옮김
        if(charIndexMap.containsKey(currentChar) && charIndexMap[currentChar]! >= windowStart) {
            windowStart = charIndexMap[currentChar]! + 1;
        }

        // 현재 문자의 위치를 최신으로 갱신
        charIndexMap[currentChar] = windowEnd;

        // 현재 윈도우 길이를 계산하여 최대 길이와 비교 후 갱신
        maxLength = (windowEnd - windowStart + 1).clamp(maxLength, s.length);
    }

    return maxLength;
    
  }
}
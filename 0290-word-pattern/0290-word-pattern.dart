class Solution {
  bool wordPattern(String pattern, String s) {
    // 문자열을 공백을 기준으로 분리
    List<String> words = s.split(' ');

    // 분리한 문자열과 패턴의 글자 수가 다르면 false
    if (pattern.length != words.length) return false;

    // 패턴 : 문자열 map
    Map<String, String> charToWord = {};
    // 문자열 : 패턴 map
    Map<String, String> wordToChar = {};

    for(int i = 0; i < pattern.length; i++) {
        String char = pattern[i];
        String word = words[i];

        // 패턴 : 문자열 map중 패턴이 포함된 경우
        if(charToWord.containsKey(char)) {
            // 패턴과 문자열이 맞지 않는 경우
            if(charToWord[char] != word) return false;
        } else {
            // 포함되어 있지 않으면 패턴 : 문자열 삽입
            charToWord[char] = word;
        }
        
        // 문자열 : 패턴 map 중 문자열이 포함된 경우
        if(wordToChar.containsKey(word)) {
            // 문자열 : 패턴이 일치하지 않는 경우
            if(wordToChar[word] != char) return false;
        } else {
            // 포함되어 있지 않으면 문자열 : 패턴 삽입
            wordToChar[word] = char;
        }
    }

    return true;
  }
}

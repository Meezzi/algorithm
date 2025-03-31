// class Solution {
//   bool isIsomorphic(String s, String t) {
//     Map<String, String> sMap = {};
//     Map<String, String> tMap = {};

//     for(int i = 0; i < s.length; i++) {
//         String charS = s[i];
//         String charT = t[i];

//         if(sMap.containsKey(charS)) {
//             if(sMap[charS] != charT)  return false;
//         } else {
//             sMap[charS] = charT;
//         }
        

//         if(tMap.containsKey(charT)) {
//             if(tMap[charT] != charS) return false;
//         } else {
//             tMap[charT] = charS;
//         }
        
//     }
//     return true;
//   }
// }

class Solution {
  bool isIsomorphic(String s, String t) {

    // ASCII 문자 기준으로 각 문자의 최근 등장 위치를 저장할 배열 (128은 ASCII 문자 개수)
    List<int> mapS = List.filled(128, -1);  // s의 문자 대응
    List<int> mapT = List.filled(128, -1);  // t의 문자 대응

    for (int i = 0; i < s.length; i++) {
      // 현재 문자를 정수(ASCII)로 변환
      int charS = s.codeUnitAt(i);
      int charT = t.codeUnitAt(i);

      // 두 문자열의 현재 문자의 이전 등장 위치가 다르면 매핑이 불일치
      if (mapS[charS] != mapT[charT]) return false;

      // 현재 문자의 등장 위치를 기록
      mapS[charS] = i;
      mapT[charT] = i;
    }

    return true;
  }
}

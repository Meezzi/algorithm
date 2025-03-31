class Solution {
  bool isIsomorphic(String s, String t) {
    Map<String, String> sMap = {};
    Map<String, String> tMap = {};

    for(int i = 0; i < s.length; i++) {
        String charS = s[i];
        String charT = t[i];

        if(sMap.containsKey(charS)) {
            if(sMap[charS] != charT)  return false;
        } else {
            sMap[charS] = charT;
        }
        

        if(tMap.containsKey(charT)) {
            if(tMap[charT] != charS) return false;
        } else {
            tMap[charT] = charS;
        }
        
    }
    return true;
  }
}
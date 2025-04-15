class Solution {
  bool isSubsequence(String s, String t) {
    int sIdx = 0;
    int tIdx = 0;

    if(s.length == 0) return true;

    while(tIdx < t.length) {
        if(s[sIdx] == t[tIdx]) {
            sIdx++;
        }
        if (sIdx == s.length) return true;
        tIdx++;
    }

     return false;
  }
}
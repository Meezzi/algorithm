class Solution {
  bool isAnagram(String s, String t) {
    List<String> sList = s.split('').toList();
    List<String> tList = t.split('').toList();

    if(s.length != t.length) return false;
    
    sList.sort();
    tList.sort();

    for(int i = 0; i < sList.length; i++) {
        if(sList[i] != tList[i]) return false;
    }
    return true;
  }
}
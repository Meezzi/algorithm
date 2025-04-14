class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    var ransomNoteList = ransomNote.split('');
    var magazineList = magazine.split('');
    ransomNoteList.sort();
    magazineList.sort();

    // ransomNote의 길이가 magazine보다 큰 경우
    if(ransomNoteList.length > magazineList.length) return false;

    // magazine의 길이가 ransomNote의 길이보다 큰 경우
    int ransomIndex = 0;
    for(int i = 0; i < magazineList.length; i++) {
        if(ransomIndex < ransomNoteList.length && ransomNoteList[ransomIndex] == magazineList[i]) {
            ransomIndex++;
        }
    }

    if(ransomIndex == ransomNoteList.length) return true;

    return false;
  }
}
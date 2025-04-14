// class Solution {
//   bool canConstruct(String ransomNote, String magazine) {
//     var ransomNoteList = ransomNote.split('');
//     var magazineList = magazine.split('');
//     ransomNoteList.sort();
//     magazineList.sort();

//     // ransomNote의 길이가 magazine보다 큰 경우
//     if(ransomNoteList.length > magazineList.length) return false;

//     // magazine의 길이가 ransomNote의 길이보다 큰 경우
//     int ransomIndex = 0;
//     for(int i = 0; i < magazineList.length; i++) {
//         if(ransomIndex < ransomNoteList.length && ransomNoteList[ransomIndex] == magazineList[i]) {
//             ransomIndex++;
//         }
//     }

//     if(ransomIndex == ransomNoteList.length) return true;

//     return false;
//   }
// }

class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    // 26개 크기의 리스트에 0 저장
    List<int> charCount = List.filled(26, 0);

    for(int i = 0; i< magazine.length; i++) {
        // 0을 저장했던 charCount에 magazine의 알파벳 등장 횟수 저장
        charCount[magazine.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
    }

    for(int i = 0; i < ransomNote.length; i++) {
        // ransomNote의 현재 알파벳 번호를 index에 저장
        int index = ransomNote.codeUnitAt(i) - 'a'.codeUnitAt(0);
        
        // magazine의 알파벳 등장 횟수를 저장한 
        // charCount의 알파벳 번호에 해당하는 숫자가 0이라면 false 반환
        if(charCount[index] == 0) return false;

        // charCount의 알파벳 숫자에 해당하는 값을 1 감소
        charCount[index]--;
    }
    return true;
  }
}
class Solution {
  List<String> letterCombinations(String digits) {
    List<String> charList = ["", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"];
    
    if (digits.isEmpty) return [];

    List<String> result = [];

    void backtrack(int index, String current) {
      if (index == digits.length) {
        result.add(current);
        return;
      }

      String letters = charList[int.parse(digits[index])];

      for (int i = 0; i < letters.length; i++) {
        backtrack(index + 1, current + letters[i]);
      }
    }

    // 백트래킹 시작
    backtrack(0, "");

    return result;
  }
}

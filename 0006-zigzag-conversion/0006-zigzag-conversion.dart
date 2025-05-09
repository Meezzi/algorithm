class Solution {
  String convert(String s, int numRows) {
    if (numRows == 1) return s;

    List<StringBuffer> rows = List.generate(numRows, (index) => StringBuffer());

    int currentRow = 0;       // 현재 작성 중인 행 번호
    bool goingDown = false;   // 아래 방향으로 진행 중인지 여부

    for (int i = 0; i < s.length; i++) {
        // 현재 행에 문자 추가
        rows[currentRow].write(s[i]);

        // 첫 번째 행이나 마지막 행에 도달하면 방향 전환
        if (currentRow == 0 || currentRow == numRows - 1) {
            goingDown = !goingDown;
        }

        // 방향에 따라 현재 행 번호를 증가 또는 감소
        currentRow += goingDown ? 1 : -1;
    }

    // 각 행의 StringBuffer를 문자열로 변환하고 합쳐서 반환
    return rows.join('');
  }
}
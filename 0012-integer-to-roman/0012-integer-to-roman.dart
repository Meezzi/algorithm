class Solution {
  String intToRoman(int num) {
    List<String> symbols = [
        "M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"
    ];

    List<int> values = [
        1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1
    ];

    String result = '';

    for(int i = 0; i < symbols.length; i++) {
        while(num >= values[i]) {
            result += symbols[i];
            num -= values[i];
        }
    }

    return result;
  }
}
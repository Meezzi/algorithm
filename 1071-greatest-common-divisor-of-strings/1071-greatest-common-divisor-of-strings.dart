class Solution {
  String gcdOfStrings(String str1, String str2) {
    if(str1 + str2 != str2 + str1) return '';

    // 최대 공약수 구하기
    int gcd(int a, int b) {
        return b == 0 ? a : gcd(b, a % b);
    }

    // 문자열 길이의 최대 공약수 구하기
    int gcdLength = gcd(str1.length, str2.length);


    // str1을 0부터 최대 공약수 길이만큼 반환
    return str1.substring(0, gcdLength);
  }
}
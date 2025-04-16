class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int count = 0;
    int length = flowerbed.length;

    for (int i = 0; i < length; i++) {
        if (flowerbed[i] == 0 &&
            (i == 0 || flowerbed[i - 1] == 0) &&
            (i == length - 1 || flowerbed[i + 1] == 0)) {
            flowerbed[i] = 1; // 꽃을 심음
            count++;
            if (count >= n) {
                return true; // 충분히 많은 꽃을 심었으면 true 반환
            }
        }
    }

    return count >= n;
  }
}
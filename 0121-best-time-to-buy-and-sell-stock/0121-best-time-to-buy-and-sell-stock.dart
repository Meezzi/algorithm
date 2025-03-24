class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = 1 << 30;
    int profit = 0;

    for (int price in prices) {
      if (price < minPrice) {
        minPrice = price;
      } else if (profit < price - minPrice) {
        profit = price - minPrice;
      }
    }
    return profit;
  }
}
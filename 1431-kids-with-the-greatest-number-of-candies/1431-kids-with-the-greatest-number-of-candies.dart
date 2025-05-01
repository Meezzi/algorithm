class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    int max = 0;
    for(int i = 0; i < candies.length; i++) {
        if (max < candies[i]) {
            max = candies[i];
        }
    }
    
    List<bool> result = [];

    for(int i = 0; i < candies.length; i++) {
        if(max > candies[i] + extraCandies) {
            result.add(false);
        } else {
            result.add(true);
        }
    }

    return result;
  }
}
class Solution {
//   List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
//     int max = 0;
//     for(int i = 0; i < candies.length; i++) {
//         if (max < candies[i]) {
//             max = candies[i];
//         }
//     }
    
//     List<bool> result = [];

//     for(int i = 0; i < candies.length; i++) {
//         if(max > candies[i] + extraCandies) {
//             result.add(false);
//         } else {
//             result.add(true);
//         }
//     }

//     return result;
//   }

List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
  // 가장 많은 사탕을 가진 아이의 사탕 수를 찾음
  int maxCandies = candies.reduce((a, b) => a > b ? a : b);
  
  // 각 아이가 사탕을 더했을 때 최대 사탕을 가질 수 있는지 확인
  return candies.map((candy) => candy + extraCandies >= maxCandies).toList();
}
}
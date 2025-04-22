class Solution {
  int minCostClimbingStairs(List<int> cost) {

    int n = cost.length;

    int prev1 = cost[1];
    int prev2 = cost[0];

    for(int i = 2; i < n; i++) {
        int curr = cost[i] + (prev1 < prev2 ? prev1 : prev2);
        prev2 = prev1;
        prev1 = curr;
    }

    return prev1 < prev2 ? prev1 : prev2;
  }
}
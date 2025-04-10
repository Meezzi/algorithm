class Solution {
  List<int> countBits(int n) {
    List<int> dp = List.filled(n + 1, 0);

    for (int i = 1; i <= n; i++) {
        dp[i] = dp[i >> 1] + (i & 1);
    }

    return dp;
    
    }
}
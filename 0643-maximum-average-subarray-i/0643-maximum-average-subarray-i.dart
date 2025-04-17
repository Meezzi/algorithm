class Solution {
  double findMaxAverage(List<int> nums, int k) {

    int sum = 0;
    for(int i = 0; i < k; i++) {
        sum += nums[i];
    }

    int maxSum = sum;

    for(int i = k; i < nums.length; i++) {
        sum = sum - nums[i - k] + nums[i];
        maxSum = max(maxSum, sum);
    }

    return maxSum/k;
  }
}
class Solution {
  int jump(List<int> nums) {
    if (nums.length == 1) return 0;

    int result = 0;
    int i = 0;

    while (i < nums.length - 1) {
      int maxReach = i;
      int nextPos = i;

      for (int j = i + 1; j <= i + nums[i] && j < nums.length; j++) {
        if (j + nums[j] > maxReach) {
          maxReach = j + nums[j];
          nextPos = j;
        }
      }

      i = nextPos;
      result++;
    }

    return result;
  }
}

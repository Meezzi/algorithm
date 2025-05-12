class Solution {
  int maxArea(List<int> height) {
    int right = height.length - 1;
    int left = 0;
    int maxArea = 0;

    while(left < right) {
        int currentHeight = min(height[left], height[right]);
        int currentArea = currentHeight * (right - left);

        maxArea = max(maxArea, currentArea);

        if(height[right] > height[left]) {
            left++;
        } else {
            right--;
        }
    }

    return maxArea;

  }
}
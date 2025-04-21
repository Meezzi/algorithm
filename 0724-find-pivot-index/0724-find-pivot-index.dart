class Solution {
  int pivotIndex(List<int> nums) {
    int rightSum = 0;
    int leftSum = 0;
    int index = 0;

    while(index < nums.length) {

        for(int i = 0; i < index; i++) {
            leftSum += nums[i];
        }

        for(int i = index + 1; i < nums.length; i++) {
            rightSum += nums[i];
        }

        if(rightSum == leftSum) {
            return index;
        }

        index++;
        rightSum = 0;
        leftSum = 0;
    }

    return -1;
  }
}
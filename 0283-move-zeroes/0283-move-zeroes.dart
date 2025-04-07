class Solution {
  void moveZeroes(List<int> nums) {
    // for(int i = 0; i < nums.length; i++) {
    //     if(nums[i] == 0) {
    //         // nums.add(0);
    //         // nums.remove(nums[i]);
    //     }
    // }

    int start = 0;
    int end = 0;

    while (start < nums.length) {
        if(nums[start] != 0) {
            int tmp = nums[start];
            nums[start] = nums[end];
            nums[end] = tmp;
            end++;
        }
        start++;
    }


    print(nums);
    
  }
}
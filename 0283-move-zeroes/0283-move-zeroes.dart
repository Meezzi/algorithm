class Solution {
  void moveZeroes(List<int> nums) {
    for(int i = 0; i < nums.length; i++) {
        if(nums[i] == 0) {
            nums.add(0);
            nums.remove(nums[i]);
        }
    }
    print(nums);
    
  }
}
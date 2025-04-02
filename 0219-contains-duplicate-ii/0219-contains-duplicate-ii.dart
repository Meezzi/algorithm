class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {

    Map<int, int> map = {};

    for(int i = 0; i < nums.length; i++) {
        if(map.containsKey(nums[i])) {
            if((map[nums[i]]! - i).abs() <= k) {
                return true;
            }
        } 
        map[nums[i]] = i;
    }
    return false;
  }
}
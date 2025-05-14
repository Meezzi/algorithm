class Solution {
  List<List<int>> threeSum(List<int> nums) {
    nums.sort();

    List<List<int>> list = [];

    for(int i = 0; i < nums.length - 2; i++) {

        if(i > 0 && nums[i] == nums[i - 1]) continue;

        int left = i + 1;
        int right = nums.length - 1;
        int target = -nums[i];

        while(left < right) {
            int sum = nums[right] + nums[left];

            if(sum == target) {
                list.add([nums[i], nums[left], nums[right]]);
                while(left < right && nums[left] == nums[left + 1]) left++;
                while(left < right && nums[right] == nums[right - 1]) right--;
                left++;
                right--;
            } else if (sum < target) {
                left++;
            } else {
                right--;
            }
        }
    }

    return list;
  }
}
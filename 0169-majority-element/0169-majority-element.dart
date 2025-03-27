class Solution {
  int majorityElement(List<int> nums) {
    nums.sort();
    int prevNum = 0;
    int prevCount = 0;
    int count = 1;
    int result = 0;

    if(nums.length == 1) return nums[0];

    for(int num in nums) {
        if(num != prevNum) {
            prevNum = num;

            
            count = 1;
        } else {
            count++;
        }
        if(prevCount < count) {
                prevCount = count;
                result = num;
            }
    }

    return result;
  }
}
class Solution {
  int majorityElement(List<int> nums) {
    // nums.sort();
    // int prevNum = 0;
    // int prevCount = 0;
    // int count = 1;
    // int result = 0;

    // if(nums.length == 1) return nums[0];

    // for(int num in nums) {
    //     if(num != prevNum) {
    //         prevNum = num;
    //         count = 1;
    //     } else {
    //         count++;
    //     }
    //     if(prevCount < count) {
    //         prevCount = count;
    //         result = num;
    //     }
    // }

    // return result;

    int count = 0;
    int candidate = nums[0];

    for(int num in nums) {
        if(count == 0) {
            candidate = num;
        }

        count += (num == candidate) ? 1 : -1; 
    }

    return candidate;
  }
}
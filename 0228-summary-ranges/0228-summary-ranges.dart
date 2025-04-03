class Solution {
  List<String> summaryRanges(List<int> nums) {
    List<String> result = [];

    if(nums.length == 0) return result;
 
    int start = nums[0];
    int end = nums[0];
    for(int i = 1; i < nums.length; i++) {

        if(end + 1 == nums[i]) {
            end = nums[i];

        } else {
            if(start == end) {
                result.add("$start");
            } else {
                result.add("$start->$end");
            }
            start = end = nums[i];
        }
    }

    if(start == end) {
        result.add("$start");
    } else {
        result.add("$start->$end");
    }
    return result;
  }
}
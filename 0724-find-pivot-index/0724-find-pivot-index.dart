// class Solution {
//   int pivotIndex(List<int> nums) {
//     int rightSum = 0;
//     int leftSum = 0;
//     int index = 0;

//     while(index < nums.length) {

//         for(int i = 0; i < index; i++) {
//             leftSum += nums[i];
//         }

//         for(int i = index + 1; i < nums.length; i++) {
//             rightSum += nums[i];
//         }

//         if(rightSum == leftSum) {
//             return index;
//         }

//         index++;
//         rightSum = 0;
//         leftSum = 0;
//     }

//     return -1;
//   }
// }

class Solution {
    int pivotIndex(List<int> nums) {

        int total = 0;
        int leftSum = 0;

        for(int i = 0; i < nums.length; i++) {
            total += nums[i];
        }

        for(int i = 0; i < nums.length; i++) {
            if(leftSum == total - leftSum - nums[i]) {
                return i;
            }
            leftSum += nums[i];
        }

        return -1;
    }
}
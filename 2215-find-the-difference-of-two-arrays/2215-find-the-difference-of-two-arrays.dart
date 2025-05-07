class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    List<int> list1 = nums1.toSet().toList();
    List<int> list2 = nums2.toSet().toList();

    List<int> result1 = [];
    List<int> result2 = [];

    for(int i in list1) {
        if(!list2.contains(i)) {
            result1.add(i);
        }
    }

    for(int j in list2) {
        if(!list1.contains(j)) {
            result2.add(j);
        }
    }

    return [result1, result2];
  }
}
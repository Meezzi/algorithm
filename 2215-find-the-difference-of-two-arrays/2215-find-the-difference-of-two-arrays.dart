class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    Set<int> set1 = nums1.toSet();
    Set<int> set2 = nums2.toSet();

    List<int> onlyIn1 = set1.where((x) => !set2.contains(x)).toList();
    List<int> onlyIn2 = set2.where((x) => !set1.contains(x)).toList();

    return [onlyIn1, onlyIn2];
  }
}

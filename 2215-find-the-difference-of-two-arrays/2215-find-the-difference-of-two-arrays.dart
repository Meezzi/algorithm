class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    Set<int> set1 = Set<int>.from(nums1);
    Set<int> set2 = Set<int>.from(nums2);

    List<List<int>> answer = [[], []];

    for (int s in set1) {
      if (!set2.contains(s)) {
        answer[0].add(s);
      }
    }
    for (int s in set2) {
      if (!set1.contains(s)) {
        answer[1].add(s);
      }
    }

    return answer;
  }
}

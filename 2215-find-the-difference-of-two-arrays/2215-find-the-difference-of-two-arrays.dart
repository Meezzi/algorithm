class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
  // 고유한 원소로만 이루어진 집합을 생성
  Set<int> set1 = nums1.toSet();
  Set<int> set2 = nums2.toSet();

  // nums1에만 있는 원소 찾기
  List<int> answer1 = set1.difference(set2).toList();

  // nums2에만 있는 원소 찾기
  List<int> answer2 = set2.difference(set1).toList();

  return [answer1, answer2];
}
}

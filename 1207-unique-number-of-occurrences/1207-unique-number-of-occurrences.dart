class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int, int> frequencyMap = {};

    for (int num in arr) {
        frequencyMap[num] = (frequencyMap[num] ?? 0) + 1;
    }

    List<int> frequencies = frequencyMap.values.toList();

    return frequencies.length == frequencies.toSet().length;
  }
}
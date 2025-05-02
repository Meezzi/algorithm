class Solution {
  int largestAltitude(List<int> gain) {
    List<int> list = [];
    list.add(0);
    int max = 0;
    print(list);

    for(int i = 0; i < gain.length; i++) {
        list.add(gain[i] + list[i]);
        if(max < list[i + 1]) {
            max = list[i + 1];
        }
    }
    print(list);

    return max;
  }
}
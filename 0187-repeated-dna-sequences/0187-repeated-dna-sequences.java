class Solution {
    public List<String> findRepeatedDnaSequences(String s) {
        if (s.length() < 10) return Collections.emptyList();

        Set<String> seen = new HashSet<>();
        Set<String> dup = new HashSet<>();

        for(int i = 0; i <= s.length() - 10; i++) {
            String sub = s.substring(i, i + 10);
            if(!seen.add(sub)) {
                dup.add(sub);
            }
        }

        return new ArrayList<>(dup);
    }
}
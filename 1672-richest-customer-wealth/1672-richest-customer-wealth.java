class Solution {
    public int maximumWealth(int[][] accounts) {
        int max = 0;
        for(int i = 0; i < accounts.length; i++) {
            int cnt = sum(accounts[i]);
            max = max < cnt ? cnt : max;
        }
        return max;
    }

    public int sum(int[] money) {
        int total = 0;
        for(int i = 0; i < money.length; i++) {
            total += money[i];
        }
        return total;
    }
}
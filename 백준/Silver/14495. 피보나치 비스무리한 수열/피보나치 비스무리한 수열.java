import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
        
        int n = Integer.parseInt(br.readLine());
        long[] dp = new long[n + 1];
        
        dp[1] = 1;
        if (n >= 2) dp[2] = 1;
        if (n >= 3) dp[3] = 1;
        if (n >= 4) {
            for(int i = 4; i <= n; i++) {
                dp[i] = dp[i - 3] + dp[i - 1];
            }
        }
        bw.write(Long.toString(dp[n]));
        bw.flush();
    }
}
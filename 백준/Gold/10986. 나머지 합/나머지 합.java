import java.io.*;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        
        int N = Integer.parseInt(st.nextToken());
        int M = Integer.parseInt(st.nextToken());
        
        long[] prefix = new long[N + 1];
        long[] count = new long[M];
        long result = 0;
        
        st = new StringTokenizer(br.readLine());
        for (int i = 1; i <= N; i++) {
            int num = Integer.parseInt(st.nextToken());
            prefix[i] = (prefix[i - 1] + num) % M;
            count[(int) prefix[i]]++;
        }
        
        result += count[0];
        
        for (int i = 0; i < M; i++) {
            if (count[i] > 1) {
                result += (count[i] * (count[i] - 1)) / 2;
            }
        }
        
        System.out.println(result);
    }
}

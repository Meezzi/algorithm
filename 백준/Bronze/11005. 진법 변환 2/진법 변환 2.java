import java.io.*;
import java.util.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        StringBuilder sb = new StringBuilder();
        
        int N = Integer.parseInt(st.nextToken());
        int B = Integer.parseInt(st.nextToken());
        
        while(N > 0) {
            int remainder = N % B;
            
            if(remainder < 10) {
                sb.append((char) ('0' + remainder));
            } else {
                sb.append((char) ('A' + (remainder - 10)));
            }
            N /= B;
        }
        
        System.out.println(sb.reverse().toString());
    }
}
import java.io.*;
import java.util.*;

class Main {
    public static void main(String[]  args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        
        int N = Integer.parseInt(st.nextToken());
        int M = Integer.parseInt(st.nextToken());
        
        int array[] = new int[N + 1];
        st = new StringTokenizer(br.readLine());
        
        for(int i = 1; i <= N; i++) {
            array[i] = array[i - 1] + Integer.parseInt(st.nextToken());
         }
        
        for(int i = 0; i < M; i++) {
            st = new StringTokenizer(br.readLine());
            int a = Integer.parseInt(st.nextToken());
            int b = Integer.parseInt(st.nextToken());
            
            System.out.println(array[b] - array[a - 1]);
        }
        
    }
}
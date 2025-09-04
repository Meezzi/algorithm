import java.io.*;
import java.util.*;

class Main {
    public static void main(String args[]) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        
        int N = Integer.parseInt(br.readLine());
        int M = Integer.parseInt(br.readLine());
        int arr[] = new int[N + 1];
        
        StringTokenizer st = new StringTokenizer(br.readLine());
        for(int i = 1; i <= N; i++) {
            arr[i] = Integer.parseInt(st.nextToken());
        }
        
        Arrays.sort(arr);
        
        int start = 1;
        int end = N;
        int cnt = 0;
        while(start < end) {
            if(arr[start] + arr[end] == M) {
                cnt++;
                start++;
                end--;
            }
            else if (arr[start] + arr[end] > M) {
                end--;
            } else {
                start++;
            }
        }
        System.out.println(cnt);
    }
}
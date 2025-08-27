import java.io.*;
import java.util.*;

class Main {
    public static void main(String args[]) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        
        String s = br.readLine();
        long ans = 1;
        
        for(int i = 0; i < s.length(); i++) {
            char cur = s.charAt(i);
            
            if(i == 0) {
                ans *=(cur == 'c') ? 26 : 10;
            } else {
                char prev = s.charAt(i - 1);
                if(cur == prev) {
                    ans *= (cur == 'c') ? 25 : 9;
                } else {
                    ans *= (cur == 'c') ? 26: 10;
                }
            }
        }
        System.out.println(ans);
    }
}
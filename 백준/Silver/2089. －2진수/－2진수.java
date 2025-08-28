import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        long n = Long.parseLong(br.readLine().trim());

        if (n == 0) {
            System.out.println(0);
            return;
        }

        StringBuilder sb = new StringBuilder();
        while (n != 0) {
            long r = n % -2;
            n /= -2;
            if (r < 0) {
                r += 2;
                n += 1;
            }
            sb.append(r);
        }

        System.out.println(sb.reverse().toString());
    }
}

import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        String line;

        while ((line = br.readLine()) != null) {
            line = line.trim();
            if (line.isEmpty()) continue;

            int n = Integer.parseInt(line);

            int len = 1;
            int rem = 1 % n;
            while (rem != 0) {
                rem = (rem * 10 + 1) % n;
                len++;
            }
            sb.append(len).append('\n');
        }

        System.out.print(sb.toString());
    }
}

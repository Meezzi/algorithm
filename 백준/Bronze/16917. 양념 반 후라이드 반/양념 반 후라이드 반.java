import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());

        long A = Long.parseLong(st.nextToken());
        long B = Long.parseLong(st.nextToken());
        long C = Long.parseLong(st.nextToken());
        long X = Long.parseLong(st.nextToken());
        long Y = Long.parseLong(st.nextToken());

        long both = Math.min(X, Y);

        long cost = 0;
        cost += both * Math.min(A + B, 2 * C);

        X -= both;
        Y -= both;

        cost += X * Math.min(A, 2 * C);
        cost += Y * Math.min(B, 2 * C);

        System.out.println(cost);
    }
}
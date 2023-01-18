import java.io.*;
import java.util.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();

        int a = Integer.parseInt(br.readLine());
        String str = br.readLine();
        int ii=0;
        int sum = 0;
        int sqrt=0;

        for(int i=0; i<a; i++) {
            char arr = str.charAt(i);
            ii = (int)arr-96;
            sqrt = (int) Math.pow(31, i);

            sum += ii * sqrt;
        }

        int res = sum%1234567891;

        System.out.println(res);

    }
}
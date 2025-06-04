import java.io.*;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        String[] line = br.readLine().split(" ");
        long a1 = Long.parseLong(line[0]);
        long a0 = Long.parseLong(line[1]);
        long c = Long.parseLong(br.readLine());
        long n0 = Long.parseLong(br.readLine());

        if (a1 <= c && a1 * n0 + a0 <= c * n0) {
            bw.write("1\n");
        } else {
            bw.write("0\n");
        }

        bw.flush();
        br.close();
        bw.close();
    }
}

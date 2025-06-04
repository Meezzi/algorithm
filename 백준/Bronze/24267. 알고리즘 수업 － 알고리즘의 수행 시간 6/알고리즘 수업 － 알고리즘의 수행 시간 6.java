import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
        
        long n = Integer.parseInt(br.readLine());
        long res = n * (n - 1) * (n - 2) / 6;
        
        bw.write(String.valueOf(res));
        bw.newLine();
        bw.write(String.valueOf(3));
        
        bw.flush();
        bw.close();
        br.close();
    }
}
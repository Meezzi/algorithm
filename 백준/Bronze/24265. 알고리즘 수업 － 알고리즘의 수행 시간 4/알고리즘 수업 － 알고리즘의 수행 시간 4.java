import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
        
        long n = Integer.parseInt(br.readLine());
        long res = n * (n - 1) / 2;
        
        bw.write(String.valueOf(res));
        bw.newLine();
        bw.write(String.valueOf(2));
        
        bw.flush();
        br.close();
        bw.close();
        
    }
}
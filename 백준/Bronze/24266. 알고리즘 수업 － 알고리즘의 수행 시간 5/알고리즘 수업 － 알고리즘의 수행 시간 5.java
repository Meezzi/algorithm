import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
        
        long n = Integer.parseInt(br.readLine());
        long result = n * n  * n;
        
        bw.write(String.valueOf(result));
        bw.newLine();
        bw.write(String.valueOf(3));
        
        bw.flush();
        br.close();
        bw.close();
    }
}
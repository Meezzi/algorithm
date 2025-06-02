import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
        
        int n = Integer.parseInt(br.readLine());
        
        bw.write(String.valueOf((long)n * n));
        bw.newLine();
        bw.write(String.valueOf(2));
        
        bw.flush();
        br.close();
        bw.close();
    }
}
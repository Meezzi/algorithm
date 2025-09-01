import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        
        int N = Integer.parseInt(br.readLine());
        String num = br.readLine();
        int result = 0;
        
        for(int i = 0; i < N; i++) {
            result += num.charAt(i) - '0';
        }
        System.out.print(result);
    }
}
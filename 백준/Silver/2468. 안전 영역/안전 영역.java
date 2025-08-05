import java.io.*;
import java.util.*;

public class Main {
    static int N;
    static int[][] map;
    static boolean[][] visited;
    static int[] dx = {-1, 1, 0, 0};
    static int[] dy = {0, 0, -1, 1};

    public static void main(String[] args) throws IOException { // <- throws 오타 수정!
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        
        N = Integer.parseInt(br.readLine());
        map = new int[N][N];

        int maxHeight = 0;
        int minHeight = 101;

        for (int i = 0; i < N; i++) {
            StringTokenizer st = new StringTokenizer(br.readLine());
            for (int j = 0; j < N; j++) {
                map[i][j] = Integer.parseInt(st.nextToken());
                maxHeight = Math.max(maxHeight, map[i][j]);
                minHeight = Math.min(minHeight, map[i][j]);
            }
        }

        int result = 1;
        
        for (int h = minHeight; h < maxHeight; h++) {
            visited = new boolean[N][N];
            int safe = 0;

            for (int i = 0; i < N; i++) {
                for (int j = 0; j < N; j++) {
                    if (!visited[i][j] && map[i][j] > h) {
                        dfs(i, j, h);
                        safe++;
                    }
                }
            }
            result = Math.max(result, safe);
        }

        System.out.println(result);
    }
    
    static void dfs(int x, int y, int h) {
        visited[x][y] = true;
        for (int d = 0; d < 4; d++) {
            int nx = x + dx[d];
            int ny = y + dy[d];
            if (nx >= 0 && nx < N && ny >= 0 && ny < N) {
                if (!visited[nx][ny] && map[nx][ny] > h) {
                    dfs(nx, ny, h);
                }
            }
        }
    }
}
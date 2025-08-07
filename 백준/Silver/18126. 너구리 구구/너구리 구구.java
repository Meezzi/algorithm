import java.io.*;
import java.util.*;

public class Main {
    static class Node {
        int idx;
        long value;
        
        Node(int idx, long value) {
            this.idx = idx;
            this.value = value;
        }
    }
    
    static long answer = Integer.MIN_VALUE;
    static ArrayList<ArrayList<Node>> graph = new ArrayList<>();
    
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
        
        int n = Integer.parseInt(br.readLine());
        
        for(int i = 0; i <= n; i++) {
            graph.add(new ArrayList<>());
        }
        
        StringTokenizer st;
        
        for(int i = 1; i < n; i++) {
            st = new StringTokenizer(br.readLine(), " ");
            int a = Integer.parseInt(st.nextToken());
            int b = Integer.parseInt(st.nextToken());
            int c = Integer.parseInt(st.nextToken());
            graph.get(a).add(new Node(b, c));
            graph.get(b).add(new Node(a, c));
        }
        
        bfs(n);
        bw.write(String.valueOf(answer));
        bw.flush();
        bw.close();
        br.close();
    }
    
    static void bfs(int n) {
        Queue<Node> queue = new ArrayDeque<>();
        boolean[] visited = new boolean[n + 1];
        visited[1] = true;
        queue.offer(new Node(1, 0));
        
        while(!queue.isEmpty()) {
            boolean flag = false;
            Node cur = queue.poll();
            
            for(Node nxt : graph.get(cur.idx)) {
                if(!visited[nxt.idx]) {
                    flag = true;
                    visited[nxt.idx] = true;
                    queue.add(new Node(nxt.idx, cur.value + nxt.value));
                }
            }
            if(!flag) answer = Math.max(answer, cur.value);
        }
    }
}
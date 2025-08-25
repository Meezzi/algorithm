import java.util.Queue;
import java.util.ArrayDeque;

class MyStack {
    private final Queue<Integer> q;

    public MyStack() {
        q = new ArrayDeque<>();
    }
    
    public void push(int x) {
        int n = q.size();
        q.offer(x);
        for(int i = 0; i < n; i++) {
            q.offer(q.poll());
        }
    }
    
    public int pop() {
        return q.poll();
    }
    
    public int top() {
        return q.peek();
    }
    
    public boolean empty() {
        return q.isEmpty();   
    }
}
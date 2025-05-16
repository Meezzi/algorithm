class Solution {
    int jump(List<int> nums) {
        if (nums.length < 2) return 0; // 점프가 필요 없는 경우
        
        int jumps = 0; // 점프 수
        int currentEnd = 0; // 현재 점프에서 도달 가능한 끝 인덱스
        int farthest = 0; // 다음 점프에서 도달할 수 있는 가장 먼 인덱스
        
        for (int i = 0; i < nums.length - 1; i++) {
            // 최대 도달 가능한 인덱스를 갱신
            farthest = max(farthest, i + nums[i]);
            
            // 현재 인덱스가 현재 점프에서 도달 가능한 끝 인덱스에 도달했을 경우
            if (i == currentEnd) {
                jumps++; // 점프 수 증가
                currentEnd = farthest; // 다음 점프에서의 끝 인덱스를 갱신
                
                
            }
        }
        
        return jumps; // 총 점프 수 반환
    }
}

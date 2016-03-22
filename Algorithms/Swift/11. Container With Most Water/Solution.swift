class Solution {
    func maxArea(height: [Int]) -> Int {
        var maxArea = 0
        
        var left = 0;
        var right = height.count - 1
        
        while left < right {
            let area = (height[left] < height[right] ? height[left] : height[right]) * (right - left)
            
            if maxArea < area {
                maxArea = area
            }
            
            if height[left] < height[right] {
                left++
            } else {
                right--
            }
        }
        
        return maxArea
    }
}

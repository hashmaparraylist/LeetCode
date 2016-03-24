class Solution {
    func threeSumClosest(nums: [Int], _ target: Int) -> Int {
        var sorted = nums.sort()
        var minOffset = Int.max
        for i in 0..<sorted.count - 2 {
            if i > 0 && sorted[i] == sorted[i - 1] {
                continue
            }
            for j in (i + 1)..<sorted.count - 1 {
                if j > (i + 1) && sorted[j] == sorted[j - 1] {
                    continue
                }
                for k in (j + 1)..<sorted.count {
                    if k > (j + 1) && sorted[k] == sorted[k - 1] {
                        continue
                    }
                    let sum = sorted[i] + sorted[j] + sorted[k]
                    let offset = sum - target
                    if abs(offset) < abs(minOffset) {
                        minOffset = offset
                    }
                    if offset == 0 {
                        return target
                    }
                }
            }
        }
        
        return target + minOffset
    }
    
    func abs(num: Int) -> Int {
        return num > 0 ? num : -num
    }
}

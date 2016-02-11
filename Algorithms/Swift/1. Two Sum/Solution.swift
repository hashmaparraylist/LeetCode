class Solution {
    func twoSum(nums: [Int], _ target: Int) -> [Int] {
        var ret = [Int]()
        
        for var i = 0; i < nums.count; ++i {
            for var j = i + 1; j < nums.count; ++j {
                let sum = nums[i] + nums[j]
                
                if sum == target {
                    ret.append(i + 1)
                    ret.append(j + 1)
                    
                    return ret
                }
            }
        }
        
        return ret
    }
}

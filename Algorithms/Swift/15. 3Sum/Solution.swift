class Solution {
    func threeSum(nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        
        if nums.count < 3 {
            return result
        }
        
        let sortedNums = nums.sort()
        for var i = 0; i < sortedNums.count - 2; i++ {
            guard sortedNums[i] <= 0 else { break }
            if i > 0 && sortedNums[i] == sortedNums[i - 1] {
                continue
            }
            for var j = i + 1; j < sortedNums.count - 1; j++ {
                if j > i + 1 && sortedNums[j] == sortedNums[j - 1] {
                    continue
                }
                for var k = j + 1; k < sortedNums.count; k++ {
                    if k > j + 1 && sortedNums[k] == sortedNums[k - 1] {
                        continue
                    }
                    if sortedNums[i] + sortedNums[j] + sortedNums[k] == 0 {
                        result.append([sortedNums[i], sortedNums[j], sortedNums[k]])
                    }
                }
            }
        }
        return result
    }
}

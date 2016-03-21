class Solution {
    func removeDuplicates(inout nums: [Int]) -> Int {
        
        for var i = nums.count - 1; i > 0; i-- {
            if nums[i] == nums[i - 1] {
                nums.removeAtIndex(i)
            }
        }

        return nums.count
    }
}

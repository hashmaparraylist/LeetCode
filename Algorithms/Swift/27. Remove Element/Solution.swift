class Solution {
    func removeElement(inout nums: [Int], _ val: Int) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        var index = nums.indexOf(val)
        while index != nil {
            nums.removeAtIndex(index!)
            index = nums.indexOf(val)
        }
        
        return nums.count
    }
}

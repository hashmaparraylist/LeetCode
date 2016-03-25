class Solution {
    func plusOne(digits: [Int]) -> [Int] {
        var overflow = 1
        var result : [Int] = []
        var i = digits.count - 1
        while i >= 0 {
            var digit = digits[i] + overflow
            overflow = digit / 10
            digit = digit % 10
            result.insert(digit, atIndex: 0)
            i--
        }
        
        if overflow > 0 {
            result.insert(overflow, atIndex: 0)
        }
        
        return result
    }
}

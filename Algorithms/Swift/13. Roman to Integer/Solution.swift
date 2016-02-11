class Solution {
    func romanToInt(s: String) -> Int {
        let map = ["I": 1, "V": 5, "X": 10, "L":50, "C": 100, "D": 500, "M": 1000]
        
        var pre = map[String(s[s.startIndex])]
        var sum = pre
        
        for var i = 1; i < s.characters.count; i++ {
            let cur = map[String(s[s.startIndex.advancedBy(i)])]
            
            if pre < cur {
                sum = sum! - 2 * pre!
            }
            
            sum = sum! + cur!
            pre = cur
        }
        
        
        return sum!
    }
}

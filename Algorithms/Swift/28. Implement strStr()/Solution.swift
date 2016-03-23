class Solution {
    func strStr(haystack: String, _ needle: String) -> Int {
        if needle.characters.count == 0 {
            return 0
        }
        
        if haystack.characters.count < needle.characters.count {
            return -1
        }
        
        if let range = haystack.rangeOfString(needle) {
            return haystack.startIndex.distanceTo(range.startIndex)
        } else {
            return -1
        }
    }
}

class Solution {
    func longestCommonPrefix(strs: [String]) -> String {
    
        if strs.count == 0 {
            return ""
        }
    
        var prefix = strs[0];
        for var i = 1; i < strs.count; i++ {
            let str = strs[i]
            while prefix.characters.count > 0 {
                if str.hasPrefix(prefix) {
                    break
                }
                
                prefix = prefix.substringToIndex(prefix.endIndex.predecessor())
            }
            
            if prefix.characters.count == 0 {
                break
            }
        }
    
        return prefix
    }
}

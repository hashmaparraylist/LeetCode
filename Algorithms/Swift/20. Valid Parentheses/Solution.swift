class Solution {
    func isValid(s: String) -> Bool {
        
        var stack: [String] = []
        
        for char in s.characters {
            switch char {
            case "(", "[", "{":
                stack.append(String(char))
            case ")":
                if stack.count == 0 {
                    return false
                }
                
                let last = stack.popLast()
                
                if (last! != "(") {
                    return false
                }
            case "]":
                if stack.count == 0 {
                    return false
                }
                
                let last = stack.popLast()
                
                if (last! != "[") {
                    return false
                }
    
            case "}":
                if stack.count == 0 {
                    return false
                }
                
                let last = stack.popLast()
                
                if (last! != "{") {
                    return false
                }
    
            default:
                break
            }
        
        }
        
        if stack.count > 0 {
            return false
        }
        
        return true
    }

}

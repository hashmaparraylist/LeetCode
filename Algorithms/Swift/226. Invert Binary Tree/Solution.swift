/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func invertTree(root: TreeNode?) -> TreeNode? {
        if root == nil {
            return nil
        }
        
        var temp = root!.left
        root!.left = root!.right
        root!.right = temp
        
        invertTree(root!.left) 
        invertTree(root!.right)
        
        return root
    }
}

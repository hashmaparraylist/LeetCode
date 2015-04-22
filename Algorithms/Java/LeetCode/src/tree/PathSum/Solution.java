package tree.PathSum;

import tree.TreeNode;

public class Solution {
    public boolean hasPathSum(TreeNode root, int sum) {
        if (root == null) return false;

        if ((root.left == null) && (root.right == null)) {
            return ((sum - root.val) == 0);
        }

        if (root.left == null) {
            return hasPathSum(root.right, sum - root.val);
        }

        if (root.right == null) {
            return hasPathSum(root.left, sum - root.val);
        }

        return hasPathSum(root.right, sum - root.val) || hasPathSum(root.left, sum - root.val);
    }
}

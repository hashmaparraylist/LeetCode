package tree.MaximumDepthOfBinaryTree;

import tree.TreeNode;

public class Solution {
    public int maxDepth(TreeNode root) {
        return checkDepth(root);
    }

    private int checkDepth(TreeNode root) {
        if (root == null) return 0;
        int left = checkDepth(root.left);
        int right = checkDepth(root.right);

        if (left > right) {
            return left + 1;
        } else {
            return right + 1;
        }
    }
}

package tree.SameTree;

import java.util.ArrayList;
import java.util.List;

import tree.TreeNode;

/**
 * Definition for binary tree
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode(int x) { val = x; }
 * }
 */
public class Solution {
    public boolean isSameTree(TreeNode p, TreeNode q) {
        List<String> pTree = getTreeNode(p);
        List<String> qTree = getTreeNode(q);

        if (pTree.size() != qTree.size()) {
            return false;
        }

        for (int i = 0; i < pTree.size(); i++) {
            if (!pTree.get(i).equals(qTree.get(i))) {
                return false;
            }
        }

        return true;
    }

    private List<String> getTreeNode(TreeNode root) {
        List<String> trees = new ArrayList<String>();
        if (root == null) {
            trees.add("#");
            return trees;
        }

        trees.add(String.valueOf(root.val));

        List<String> left = getTreeNode(root.left);
        List<String> right = getTreeNode(root.right);
        trees.addAll(left);
        trees.addAll(right);

        return trees;
    }

}
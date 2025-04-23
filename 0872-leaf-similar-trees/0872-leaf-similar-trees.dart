/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  bool leafSimilar(TreeNode? root1, TreeNode? root2) {

    List<int> list1 = searchLeafTree(root1);
    List<int> list2 = searchLeafTree(root2);

    if(list1.length == list2.length) {
        for(int i = 0; i < list1.length; i++) {
            if(list1[i] != list2[i]) return false; 
        }
    } else {
        return false;
    }

    return true;
  }

  List<int> searchLeafTree(TreeNode? root) {

    List<int> leafNodeList = [];

    void dfs(TreeNode? node) {
        if (node == null) return;

        if(node.left == null && node.right == null) {
            leafNodeList.add(node.val);
        }

        dfs(node.left);
        dfs(node.right);
    }

    dfs(root);

    return leafNodeList;
  }
}
/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    var res: Int = 0
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        dfs(root)
        return res
    }
    func dfs(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        let left = dfs(root!.left)
        let right = dfs(root!.right)
        res = max(res, left + right)
        return 1 + max(left, right)
    }
}

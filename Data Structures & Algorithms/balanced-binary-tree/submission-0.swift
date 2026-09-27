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
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        let isLeftBalanced = isBalanced(root!.left)
        let isRightBalanced = isBalanced(root!.right)
        let isBal = abs(height(root!.left) - height(root!.right)) < 2
        return isBal && isLeftBalanced && isRightBalanced
    }
    func height(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        let left = height(root!.left)
        let right = height(root!.right)
        return 1+max(left, right)
    }
}

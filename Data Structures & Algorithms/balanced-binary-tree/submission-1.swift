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
        return height(root) != nil
    }
    
    private func height(_ root: TreeNode?) -> Int? {
        guard let root = root else { return 0 }
        
        guard let leftHeight = height(root.left),
              let rightHeight = height(root.right),
              leftHeight <= rightHeight + 1,
              rightHeight <= leftHeight + 1 else {
            return nil
        }
        
        return 1 + max(leftHeight, rightHeight)
    }
}

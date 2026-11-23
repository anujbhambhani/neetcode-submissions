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
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        var foundP = false
        var foundQ = false
        return lowestCommonAncestorHelper(root, p, q, &foundP, &foundQ)
    }

    private func lowestCommonAncestorHelper(
        _ root: TreeNode?,
        _ p: TreeNode?,
        _ q: TreeNode?,
        _ foundP: inout Bool,
        _ foundQ: inout Bool) -> TreeNode? {
        guard let root = root, let p = p, let q = q else {
            return nil
        }
        var leftFoundP = false
        var leftFoundQ = false
        if let lcaInLeft = lowestCommonAncestorHelper(root.left, p, q, &leftFoundP, &leftFoundQ) {
            return lcaInLeft
        }
        var rightFoundP = false
        var rightFoundQ = false
        if let lcaInRight = lowestCommonAncestorHelper(root.right, p, q, &rightFoundP, &rightFoundQ) {
            return lcaInRight
        }
        foundP = foundP || root.val == p.val || leftFoundP || rightFoundP
        foundQ = foundQ || root.val == q.val || leftFoundQ || rightFoundQ
        if foundP && foundQ {
            return root
        }
        return nil
    }
}

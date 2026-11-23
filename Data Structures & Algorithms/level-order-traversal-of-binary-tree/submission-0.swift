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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        var q = Deque<TreeNode?>()
        q.append(root)
        while !q.isEmpty {
            let qLen = q.count
            var level = [Int]()
            for _ in 0..<qLen {
                if let node = q.removeFirst() {
                    level.append(node.val)
                    q.append(node.left)
                    q.append(node.right)
                }
            }
            if !level.isEmpty {
                res.append(level)
            }
        }
        return res
    }
}

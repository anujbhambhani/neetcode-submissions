class Solution {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }

        var res = [Int]()
        var q = Deque<TreeNode>()
        q.append(root)

        while !q.isEmpty {
            if let top = q.first {
                res.append(top.val)
            }

            let count = q.count

            for _ in 0..<count {
                let top = q.removeFirst()

                if let right = top.right {
                    q.append(right)
                }

                if let left = top.left {
                    q.append(left)
                }
            }
        }

        return res
    }
}
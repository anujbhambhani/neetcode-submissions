/*
// Definition for a Node.
class Node {
    var val: Int
    var next: Node?
    var random: Node?
    init(_ val: Int) {
        self.val = val
        self.next = nil
        self.random = nil
    }
}
*/

class Solution {
    func copyRandomList(_ head: Node?) -> Node? {
        guard let head = head else {
            return nil
        }
        var map = [Node: Node]()
        return copyHelper(head, &map)
    }

    func copyHelper(_ head: Node?,_ map: inout [Node: Node]) -> Node? {
        guard let head = head else {
            return nil
        }
        if let copy = map[head] {
            return copy
        }
        var copy = Node(head.val)
        map[head] = copy
        copy.next = copyHelper(head.next, &map)
        copy.random = copyHelper(head.random, &map)
        return copy
    }
}

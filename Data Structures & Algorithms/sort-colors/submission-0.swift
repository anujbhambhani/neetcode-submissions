class Solution {
    func sortColors(_ nums: inout [Int]) {
        let len = nums.count

        var r = 0
        var b = len - 1
        var i = 0

        while i <= b {
            if nums[i] == 0 {
                nums.swapAt(r, i)
                r += 1
                i += 1
            } else if nums[i] == 2 {
                nums.swapAt(b, i)
                b -= 1
                // Don't increment i!
                // The swapped element hasn't been examined.
            } else {
                i += 1
            }
        }
    }
}
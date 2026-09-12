class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        var j = 0
        let n = nums.count // 4
        while (j < n) { 
            if (nums[j] != val) {
                nums[i] = nums[j] // [2,2,2,3]
                i += 1 // 2
            }
            j += 1 // 4
        }
        return i
    }
}

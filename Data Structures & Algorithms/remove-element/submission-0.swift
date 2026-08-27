class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        var j = 0
        let n = nums.count
        while (j < n) {
            nums[i] = nums[j]
            if (nums [i] != val) {
                 i += 1 
            }
            j += 1
        }        
        return i
    }
}

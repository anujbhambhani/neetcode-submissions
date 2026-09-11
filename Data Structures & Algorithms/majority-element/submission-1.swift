class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var res = nums[0]
        var cnt = 1
        let n = nums.count
        var i = 1
        while (i < n) {
            if (nums[i] == res) {
                cnt += 1
            } else {
                cnt -= 1
                if (cnt == 0) {
                    cnt = 1
                    res = nums[i]
                }
            }
            i += 1
        }
        return res
    }
}

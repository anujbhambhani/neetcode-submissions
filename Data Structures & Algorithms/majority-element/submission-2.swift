// 4:50
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var res = nums[0]
        var cnt = 1
        var i = 1
        let n = nums.count
        while (i < n) {
            if (nums[i] == res) {
                cnt += 1
            } else {
                cnt -= 1
                if (cnt == 0) {
                    res = nums[i]
                    cnt = 1
                }
            }
            i += 1
        }
        return res
    }
}

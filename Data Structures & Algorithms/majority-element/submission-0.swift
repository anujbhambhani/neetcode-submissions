class Solution {
    func majorityElement(_ nums: [Int]) -> Int { // [5,1,1]
        var res = nums[0]  // 5
        var cnt = 1 // 1
        let n = nums.count // 3
        var i = 1 // 1
        while (i < n) { 
            if (nums[i] == res) { cnt += 1 } // 2
            else {
                cnt -= 1 // 0
                if (cnt == 0) {
                    res = nums[i] // 1
                    cnt = 1 // 1
                }
            }
            i+=1 // 2
        }
        return res
    }
}

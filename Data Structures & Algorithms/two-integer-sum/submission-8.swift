// 8:25
// 8:27
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hash = [Int: Int]()
        var res = [Int]()
        for (index, num) in nums.enumerated() { // 1, 5
            let counterPart = target - num // 5
            if (hash[counterPart] != nil) {
                res.append(hash[counterPart]!) // 0
                res.append(index) // 1
                return res
            } else {
                hash[num] = index // hash[5] = 0
            }
        }
        return res
    }
}

// 9:33
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap = [Int: Int]()
        for (index, num) in nums.enumerated() {
            if let i = hashMap[target - num] {
                return [i, index]
            }
            hashMap[num] = index
        }
        return [Int]()
    }
}

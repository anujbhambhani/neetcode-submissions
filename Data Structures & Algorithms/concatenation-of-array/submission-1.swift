class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        let len = nums.count
        var ans = [Int](repeating: 0, count: len * 2)
        for i in 0..<len {
            ans[i] = nums[i]
            ans[i + len] = nums[i]
        }
        return ans
    }
}

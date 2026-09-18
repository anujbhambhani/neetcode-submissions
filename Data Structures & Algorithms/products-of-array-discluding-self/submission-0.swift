class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var left = Array(repeating: 1, count: n)
        for i in 1..<nums.count {
            left[i] = left[i - 1] * nums[i - 1]
        }

        var right = Array(repeating: 1, count: n)
        for i in stride(from: n - 2, through: 0, by: -1) {
            right[i] = right[i+1] * nums[i+1]
        }
        var result = Array(repeating: 1, count: n)

        for i in 0..<n {
            result[i] = left[i] * right[i]
        }
        return result
    }
}

class Solution {

    private var seen = [Int: Int]()
    private var exists = [Int: Bool]()

    func longestConsecutive(_ nums: [Int]) -> Int {
        seen = [Int: Int]()
        exists = [Int: Bool]()
        for num in nums {
            exists[num] = true
        }
        var mx = 0
        for num in nums {
            mx = max(mx, compute(num))
        }
        return mx
    }

    private func compute(_ i: Int) -> Int {
        if let val = seen[i] {
            return val
        }
        var ans = 1
        if let isPresent = exists[i + 1] {
            ans = compute(i + 1) + 1
        }
        seen[i] = ans
        return ans
    }
}

class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var res = [Int]()
        for num in nums {
            res.append(num)
        }
        for num in nums {
            res.append(num)
        }
        return res
    }
}

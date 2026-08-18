class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let sortedNums = nums.enumerated().map { ($0.element, $0.offset) }.sorted { $0.0 < $1.0  }
        var res = [Int]()
        var i = 0
        var j = sortedNums.count - 1 
        while (i<j) {
            if (sortedNums[i].0 + sortedNums[j].0 == target) {
                res.append(sortedNums[i].1)
                res.append(sortedNums[j].1)
                return res.sorted()
            } else if (sortedNums[i].0 + sortedNums[j].0 < target) {
                i += 1
            } else {
                j -= 1
            }
        }
        return res
    }
}

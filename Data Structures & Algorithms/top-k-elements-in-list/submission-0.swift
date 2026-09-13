class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var hash = [Int: Int]()
        for num in nums {
            hash[num, default: 0] += 1
        }
        var arr = [(Int, Int)]()
        for (val, count) in hash {
            arr.append((val, count))
        }
        arr.sort {$0.1 < $1.1}
        var res = [Int]()
        var kk = 0
        while kk < k {
            res.append(arr.removeLast().0)

            kk += 1
        }
        return res
    }
}

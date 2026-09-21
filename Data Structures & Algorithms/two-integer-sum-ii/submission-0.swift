class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        let n = numbers.count
        var i = 0
        var j = n - 1
        var res = [Int]()
        while (i < j) {
            if (numbers[i] + numbers[j] == target) {
                res.append(i + 1)
                res.append(j + 1)
                return res
            } else if (numbers[i] + numbers[j] > target) {
                j -= 1
            } else {
                i += 1
            }
        }
        return res
    }
}

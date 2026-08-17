class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }
        var sCount = [Character: Int]()
        var tCount = [Character: Int]()
        for ch in s {
            sCount[ch, default: 0] += 1
        }
        for ch in t {
            tCount[ch, default: 0] += 1
        }
        return sCount == tCount
    }
}

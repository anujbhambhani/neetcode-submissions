class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var res = strs[0]
        for str in strs {
            var cur = ""
            for (c1,c2) in zip(res, str) {
                if (c1 != c2) { break }
                else { cur.append(c1) }
            }
            res = cur
        }
        return res
    }
}

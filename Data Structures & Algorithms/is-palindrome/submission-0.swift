class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var i = 0
        var j = s.count - 1
        let arr = Array(s)
        while (i < j) {
            if (!isAlphaNum(arr[i])) { i += 1 }
            else if (!isAlphaNum(arr[j])) { j -= 1 }
            else if (arr[i].lowercased() != arr[j].lowercased()) { return false } 
            else {
                i += 1
                j -= 1
            }
        }
        return true
    }
    private func isAlphaNum(_ c: Character) -> Bool {
        return c.isLetter || c.isNumber
    }
}

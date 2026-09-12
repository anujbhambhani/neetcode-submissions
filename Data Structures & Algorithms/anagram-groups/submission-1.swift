class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagramDict = [String: [String]]()
        for str in strs {
            var key = String(str.sorted())
            anagramDict[key, default:[]].append(str)
        }
        return Array(anagramDict.values)
    }
}

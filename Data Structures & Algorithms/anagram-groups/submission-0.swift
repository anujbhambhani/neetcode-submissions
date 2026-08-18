class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagramDict = [String: [String]]()
        for str in strs {
            let key = String(str.sorted())
            anagramDict[key,default: []].append(str)
        }
        return Array(anagramDict.values)
    }
}

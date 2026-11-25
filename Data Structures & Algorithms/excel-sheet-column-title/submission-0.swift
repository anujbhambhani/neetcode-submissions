class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        return convertToTitleHelper(columnNumber - 1)
    }

    private func convertToTitleHelper(_ columnNumber: Int) -> String {
        guard columnNumber > 26 else {
            return String(Character("A") + columnNumber)
        }
        let last = columnNumber % 26
        return convertToTitleHelper(columnNumber / 26 - 1) + String(Character("A") + last)
    }
}

extension Character {
    static func + (lhs: Character, rhs: Int) -> Character {
        guard let ascii = lhs.asciiValue else { return lhs }
        return Character(UnicodeScalar(Int(ascii) + rhs)!)
    }
}

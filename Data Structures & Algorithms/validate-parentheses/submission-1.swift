class Solution {
    func isValid(_ s: String) -> Bool {
       var stack = [Character]()
       for ch in s {
        if isOpen(ch) {
            stack.append(ch)
        } else {
            if stack.isEmpty { return false }
            if stack.last! == correspondingOpen(ch) {
                stack.popLast()
            } else { return false }
        }
       }
       return stack.isEmpty
    }
    func isOpen(_ ch: Character) -> Bool {
        return ch == "(" || ch == "{" || ch == "["
    }
    func correspondingOpen(_ ch: Character) -> Character {
        if ch == ")" { return "(" }
        if ch == "}" { return "{" }
        if ch == "]" { return "[" }
        return "|"
    }
}

class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let ROWS = matrix.count
        let COLS = matrix[0].count

        var l = 0, r = ROWS * COLS - 1
        while l <= r {
            let m = l + (r - l) / 2
            let row = m / COLS
            let col = m % COLS

            if target > matrix[row][col] {
                l = m + 1
            } else if target < matrix[row][col] {
                r = m - 1
            } else {
                return true
            }
        }
        return false
    }
}

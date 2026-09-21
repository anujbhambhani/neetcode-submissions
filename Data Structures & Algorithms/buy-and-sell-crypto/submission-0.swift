class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var res = 0
        var boughtPrice = prices[0]
        for price in prices {
            res = max(res, price - boughtPrice)
            boughtPrice = min(boughtPrice, price)
        }
        return res
    }
}

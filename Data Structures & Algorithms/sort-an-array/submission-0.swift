class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var nums = nums
        heapSort(&nums)
        return nums
    }

    private func heapify(_ arr: inout [Int],_ count: Int,_ i: Int) {
        let l = (i << 1) + 1
        let r = (i << 1) + 2
        var candidate = i
        if l < count && arr[l] > arr[candidate] {
            candidate = l
        }
        if r < count && arr[r] > arr[candidate] {
            candidate = r
        }
        if i != candidate {
            arr.swapAt(i, candidate)
            heapify(&arr, count, candidate)
        }
    }

    private func heapSort(_ arr: inout [Int]) {
        let n = arr.count
        for i in stride(from: n / 2 - 1, through: 0, by: -1) {
            heapify(&arr, n, i)
        }
        for i in stride(from: n - 1, through: 1, by: -1) {
            arr.swapAt(0, i)
            heapify(&arr, i, 0)
        }
    }
}

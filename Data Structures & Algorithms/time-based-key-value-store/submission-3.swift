class TimeMap {

    private var keyMap = [String: [Int]]()
    private var valueMap = [String: String]()

    init() {

    }

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        keyMap[key, default:[Int]()].append(timestamp)
        valueMap["\(key)#\(timestamp)"] = value
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        let timestamp = binarySearch(key, timestamp)
        if let ans = valueMap["\(key)#\(timestamp)"] {
            return ans
        }
        return ""
    }

    private func binarySearch(_ key: String,_ timestamp: Int) -> Int {
        guard let tsArray = keyMap[key] else {
            return -1
        }
        var lo = 0
        var hi = tsArray.count - 1
        while lo <= hi {
            let mid = (lo + hi) / 2
            if tsArray[mid] == timestamp {
                return timestamp
            } else if tsArray[mid] > timestamp {
                hi = mid - 1
            } else {
                lo = mid + 1
            }
        }
        return hi >= 0 ? tsArray[hi] : -1
    }
}

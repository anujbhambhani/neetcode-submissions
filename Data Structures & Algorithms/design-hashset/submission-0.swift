class MyHashSet {

    private var map: [Int]
    private let bit: Int = 32
    init() {
        map = [Int](repeating: 0, count: 31251)
    }

    func add(_ key: Int) {
        map[key / bit] |= mask(key)
    }

    func remove(_ key: Int) {
        guard contains(key) else {
            return
        }
        map[key / bit] ^= mask(key)
    }

    func contains(_ key: Int) -> Bool {
        return (map[key / bit] & mask(key)) != 0
    }

    private func mask(_ key: Int) -> Int {
        return 1 << (key % bit)
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */

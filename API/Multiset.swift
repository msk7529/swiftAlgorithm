//
//  Multiset.swift
//  Algorithm
//
//  Created by kakao on 2021/08/15.
//
public struct Multiset<T: Hashable> {
    private var storage: [T: Int] = [:]
    public private(set) var count: Int = 0
    
    public init() {}
    
    public init<C: Collection>(_ collection: C) where C.Element == T {
        for element in collection {
            self.add(element)
        }
    }
    
    public mutating func add (_ elem: T) {
        storage[elem, default: 0] += 1
        count += 1
    }
    
    public mutating func remove (_ elem: T) {
        if let currentCount = storage[elem] {
            if currentCount > 1 {
                storage[elem] = currentCount - 1
            } else {
                storage.removeValue(forKey: elem)
            }
            count -= 1
        }
    }
    
    public func contains(_ elem: T) -> Bool {
        return count(for: elem) > 0 ? true : false
    }
    
    public func isSubSet (of superset: Multiset<T>) -> Bool {
        for (key, count) in storage {
            let supersetcount = superset.storage[key] ?? 0
            if count > supersetcount {
                return false
            }
        }
        return true
    }
    
    public func count(for key: T) -> Int {
        return storage[key] ?? 0
    }
    
    public var allItems: [T] {
        var result = [T]()
        for (key, count) in storage {
            for _ in 0 ..< count {
                result.append(key)
            }
        }
        return result
    }
}

// MARK: - Equatable
extension Multiset: Equatable {
    public static func == (lhs: Multiset<T>, rhs: Multiset<T>) -> Bool {
        if lhs.storage.count != rhs.storage.count {
            return false
        }
        for (lkey, lcount) in lhs.storage {
            let rcount = rhs.storage[lkey] ?? 0
            if lcount != rcount {
                return false
            }
        }
        return true
    }
}

// MARK: - ExpressibleByArrayLiteral
extension Multiset: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}

//
//  Queue.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 03/01/2022.
//

import Foundation

class Queue<T> {
    var array: [T] = []
    var rearIndex: Int = -1 // EnQueue (entry) end
    var frontIndex: Int = -1 // DeQueue (exit) end

    public init() {}

    public var isEmpty: Bool {
        return rearIndex == -1 && frontIndex == -1
    }
}

extension Queue {
    public var rearItem: T? {
        if isEmpty { return nil }

        return array[rearIndex]
    }

    public var frontItem: T? {
        if isEmpty { return nil }

        return array[frontIndex]
    }

    public func enQueue(data: T) {
        array.append(data)

        if isEmpty {
            rearIndex = 0
            frontIndex = 0
        } else {
            rearIndex += 1
        }
    }

    public func deQueue() -> T? {
        if isEmpty { return nil }

        let deletedData = array[frontIndex]

        if frontIndex == rearIndex {
            frontIndex = -1
            rearIndex = -1
            array = []
        } else {
            frontIndex += 1
        }

        return deletedData
    }
}

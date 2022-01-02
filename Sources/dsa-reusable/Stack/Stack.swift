//
//  Stack.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 02/01/2022.
//

import Foundation

public class Stack<T> {
    var top: Int = -1
    var array: [T] = []

    public init() {}
}

extension Stack {
    public var isEmpty: Bool { return top == -1 }

    public var peek: T? {
        if isEmpty { return nil }

        return array[top]
    }

    public func push(data: T) {
        array.append(data)
        top += 1
    }

    public func pop() -> T? {
        if isEmpty { return nil }

        let deletedData = array[top]
        array.removeLast()
        top -= 1

        return deletedData
    }
}

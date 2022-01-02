//
//  StackLinkedList.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 02/01/2022.
//

import Foundation

public class StackLinkedList<T: Equatable> {
    var linkedList = SinglyLinkedList<T>()

    public init() {}
}

extension StackLinkedList {
    public var isEmpty: Bool { return linkedList.isEmpty }

    public var peek: T? {
        if isEmpty { return nil }

        return linkedList.head?.data
    }

    public func push(data: T) {
        linkedList.insertAtStart(data: data)
    }

    public func pop() -> T? {
        if isEmpty { return nil }

        return linkedList.deleteFromStart()
    }
}

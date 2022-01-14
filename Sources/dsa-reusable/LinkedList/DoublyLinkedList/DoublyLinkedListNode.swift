//
//  DoublyLinkedListNode.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 14/01/2022.
//

import Foundation

public class DoublyLinkedListNode<T: Equatable> {
    public var data: T
    public var previousNode: DoublyLinkedListNode?
    public var nextNode: DoublyLinkedListNode?

    public init(data: T, previousNode: DoublyLinkedListNode? = nil, nextNode: DoublyLinkedListNode? = nil) {
        self.data = data
        self.previousNode = previousNode
        self.nextNode = nextNode
    }
}

extension DoublyLinkedListNode: Equatable {
    static public func == (lhs: DoublyLinkedListNode, rhs: DoublyLinkedListNode) -> Bool {
        if lhs.data == rhs.data && lhs.previousNode === rhs.previousNode && lhs.nextNode === rhs.nextNode { return true }

        return false
    }
}

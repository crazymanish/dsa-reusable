//
//  SinglyLinkedListNode.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 22/12/2021.
//

import Foundation

public class SinglyLinkedListNode<T: Equatable> {
    public var data: T
    public var nextNode: SinglyLinkedListNode?

    public init(data: T, nextNode: SinglyLinkedListNode? = nil) {
        self.data = data
        self.nextNode = nextNode
    }
}

extension SinglyLinkedListNode: Equatable {
    static public func == (lhs: SinglyLinkedListNode, rhs: SinglyLinkedListNode) -> Bool {
        if lhs.data != rhs.data { return false }
        if lhs.nextNode != rhs.nextNode { return false }
        return true
    }
}

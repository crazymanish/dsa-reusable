//
//  SinglyLinkedListNode.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 22/12/2021.
//

import Foundation

public class SinglyLinkedListNode<T> {
    public var data: T
    public var nextNode: SinglyLinkedListNode?

    public init(data: T, nextNode: SinglyLinkedListNode? = nil) {
        self.data = data
        self.nextNode = nextNode
    }
}

//
//  DoublyLinkedList.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 14/01/2022.
//

import Foundation

public class DoublyLinkedList<T: Equatable> {
    public var head: DoublyLinkedListNode<T>?

    public var isEmpty: Bool { head == nil }

    public var asArray: [T] {
        var outputArray: [T] = []

        var currentNode = head

        while currentNode != nil {
            outputArray.append(currentNode!.data)

            currentNode = currentNode?.nextNode
        }

        return outputArray
    }

    public var count: Int {
        var length = 0

        var currentNode = head

        while currentNode != nil {
            length += 1

            currentNode = currentNode?.nextNode
        }

        return length
    }

    public init() {}

    public func insertAtStart(data: T) {
        let newNode = DoublyLinkedListNode(data: data)

        if isEmpty {
            head = newNode
        } else {
            newNode.nextNode = head
            head?.previousNode = newNode
            head = newNode
        }
    }
}

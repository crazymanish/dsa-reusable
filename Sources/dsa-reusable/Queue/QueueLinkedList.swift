//
//  QueueLinkedList.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 03/01/2022.
//

import Foundation

public class QueueLinkedList<T: Equatable> {
    var rear: SinglyLinkedListNode<T>? = nil // EnQueue (entry) side (last node)
    var front: SinglyLinkedListNode<T>? = nil // DeQueue (exit) side (first/head node)

    public init() {}

    public var isEmpty: Bool {
        return rear == nil && front == nil
    }
}

extension QueueLinkedList {
    public var rearData: T? {
        if isEmpty { return nil }

        return rear?.data
    }

    public var frontData: T? {
        if isEmpty { return nil }

        return front?.data
    }

    public func enQueue(data: T) {
        let newNode = SinglyLinkedListNode(data: data)

        if isEmpty {
            front = newNode
            rear = newNode
        } else {
            rear?.nextNode = newNode
            rear = newNode
        }
    }

    public func deQueue() -> T? {
        if isEmpty { return nil }

        let deletedData = front?.data

        if front == rear {
            rear = nil
            front = nil
        } else {
            front = front?.nextNode
        }

        return deletedData
    }
}

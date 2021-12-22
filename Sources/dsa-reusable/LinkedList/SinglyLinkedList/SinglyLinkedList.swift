//
//  SinglyLinkedList.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 22/12/2021.
//

import Foundation

public class SinglyLinkedList<T> {
    public var head: SinglyLinkedListNode<T>?

    public var isEmpty: Bool { head == nil }

    public func insertAtStart(data: T) {
        let newNode = SinglyLinkedListNode(data: data)

        if isEmpty {
            head = newNode
        } else {
            newNode.nextNode = head
            head = newNode
        }
    }

    public func deleteFromStart() -> T? {
        if isEmpty {
            return nil
        } else {
            let deletedNode = head

            head = head?.nextNode

            return deletedNode?.data
        }
    }

    public func printList() {
        if isEmpty {
            print("LinkedList is empty!")
            return
        }

        print("Printing linkedList:")

        var linkedListNode = head

        while linkedListNode != nil {
            print(linkedListNode!.data)

            linkedListNode = linkedListNode?.nextNode
        }
    }
}

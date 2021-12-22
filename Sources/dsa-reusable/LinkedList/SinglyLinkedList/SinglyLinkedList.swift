//
//  SinglyLinkedList.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 22/12/2021.
//

import Foundation

public class SinglyLinkedList<T: Equatable> {
    public var head: SinglyLinkedListNode<T>?

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
        guard isEmpty == false else { return nil }

        let deletedNode = head

        head = head?.nextNode

        return deletedNode?.data
    }

    public func delete(data: T) {
        guard isEmpty == false else { return }

        if head?.data == data {
            head = nil
            return
        }

        var previousNode: SinglyLinkedListNode<T>? = nil
        var currentNode = head

        while currentNode != nil {
            if currentNode!.data == data {
                previousNode?.nextNode = currentNode?.nextNode
                currentNode = nil
                return
            }

            previousNode = currentNode
            currentNode = currentNode?.nextNode
        }
    }

    public func printList() {
        if isEmpty {
            print("LinkedList is empty!")
            return
        }

        print("Printing linkedList:")

        var currentNode = head

        while currentNode != nil {
            print(currentNode!.data)

            currentNode = currentNode?.nextNode
        }
    }
}

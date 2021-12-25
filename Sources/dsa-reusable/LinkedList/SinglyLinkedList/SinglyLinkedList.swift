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

    public var count: Int {
        var length = 0

        var currentNode = head

        while currentNode != nil {
            length += 1

            currentNode = currentNode?.nextNode
        }

        return length
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

    public func delete(at index: Int) -> T? {
        guard isEmpty == false else { return nil }

        if index == 0 {
            let deletedNodeData = head?.data
            head = nil
            return deletedNodeData
        }

        var previousNode: SinglyLinkedListNode<T>? = nil
        var currentNode = head
        var currentIndex = 0

        while currentNode != nil {
            if currentIndex == index {
                previousNode?.nextNode = currentNode?.nextNode

                let deletedNodeData = currentNode?.data
                currentNode = nil
                return deletedNodeData
            }

            previousNode = currentNode
            currentNode = currentNode?.nextNode
            currentIndex += 1
        }

        return nil
    }

    public func deleteList() {
        head = nil
    }

    public func search(data: T) -> Bool {
        guard isEmpty == false else { return false }

        var currentNode = head

        while currentNode != nil {
            if currentNode!.data == data { return true }

            currentNode = currentNode?.nextNode
        }

        return false
    }

    public func find(at index: Int) -> T? {
        guard isEmpty == false else { return nil }

        var currentNode = head
        var currentIndex = 0
        while currentNode != nil {
            if currentIndex == index { return currentNode?.data }

            currentNode = currentNode?.nextNode
            currentIndex += 1
        }

        return nil
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

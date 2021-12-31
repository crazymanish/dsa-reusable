//
//  SinglyCircularLinkedList.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 30/12/2021.
//

import Foundation

public class SinglyCircularLinkedList<T: Equatable> {
    public var last: SinglyLinkedListNode<T>?

    public var isEmpty: Bool { last == nil }

    public var asArray: [T] {
        guard isEmpty == false else { return [] }

        var outputArray: [T] = []

        var currentNode = last?.nextNode

        repeat {
            outputArray.append(currentNode!.data)
            currentNode = currentNode?.nextNode

        } while currentNode != last?.nextNode

        return outputArray
    }

    public var count: Int {
        guard isEmpty == false else { return 0 }

        var length = 0

        var currentNode = last

        repeat {
            length += 1
            currentNode = currentNode?.nextNode
        } while currentNode != last

        return length
    }

    public func insertAtStart(data: T) {
        let newNode = SinglyLinkedListNode(data: data)

        if isEmpty {
            newNode.nextNode = newNode
            last = newNode
        } else {
            newNode.nextNode = last?.nextNode
            last?.nextNode = newNode
            last = last?.nextNode
        }
    }

    public func printList() {
        if isEmpty {
            print("LinkedList is empty!")
            return
        }

        print("Printing Circular linkedList:")

        var currentNode = last?.nextNode

        repeat {
            print(currentNode!.data)
            currentNode = currentNode?.nextNode
        } while currentNode != last?.nextNode
    }

    public init() {}

    public func deleteList() {
        last = nil
    }

    public func deleteFromStart() -> T? {
        guard isEmpty == false else { return nil }

        let deletedNode = last?.nextNode

        last?.nextNode = deletedNode?.nextNode

        return deletedNode?.data
    }

    public func delete(data: T) {
        guard isEmpty == false else { return }

        if last?.data == data {
            last = nil
            return
        }

        var previousNode: SinglyLinkedListNode<T>? = nil
        var currentNode = last?.nextNode

        repeat {
            if currentNode!.data == data {
                previousNode?.nextNode = currentNode?.nextNode
                currentNode = nil
                return
            }

            previousNode = currentNode
            currentNode = currentNode?.nextNode
        } while currentNode != last?.nextNode
    }

    public func delete(at index: Int) -> T? {
        guard isEmpty == false else { return nil }

        var previousNode: SinglyLinkedListNode<T>? = last
        var currentNode = last?.nextNode
        var currentIndex = 0

        repeat {
            if currentIndex == index {
                previousNode?.nextNode = currentNode?.nextNode

                let deletedNodeData = currentNode?.data
                currentNode = nil
                return deletedNodeData
            }

            previousNode = currentNode
            currentNode = currentNode?.nextNode
            currentIndex += 1
        } while currentNode != last?.nextNode

        return nil
    }
}

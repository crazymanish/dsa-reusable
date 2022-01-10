//
//  BinaryTree.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 10/01/2022.
//

import Foundation

public struct BinaryTree<T: Equatable> {
    var root: Node<T>? = nil

    public var isEmpty: Bool { root == nil }

    public init() {}
}

extension BinaryTree {
    public mutating func insert(data: T) {
        let newNode = Node(data: data)

        if isEmpty {
            root = newNode
            return
        }

        var queue = Queue<Node<T>>()
        queue.enQueue(data: root!)

        while true {
            let node = queue.deQueue()

            if node?.left != nil && node?.right != nil {
                queue.enQueue(data: node!.left!)
                queue.enQueue(data: node!.right!)
            } else {
                if node?.left == nil {
                    node?.left = newNode
                } else {
                    node?.right = newNode
                }
                break
            }
        }
    }
}

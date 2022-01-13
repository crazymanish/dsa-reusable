//
//  BinaryTree+Traversal.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 10/01/2022.
//

import Foundation

extension BinaryTree {
    public var levelOrderTraversal: [T] {
        if height == 0 {
            return []
        }

        var array: [T] = []

        for currentLevel in 1...height {
            levelOrderTraversal(node: root, level: currentLevel, array: &array)
        }

        return array
    }

    private func levelOrderTraversal(node: Node<T>?, level: Int, array: inout [T]) {
        if node == nil { return }

        if level == 1 {
            array.append(node!.data)
        }

        levelOrderTraversal(node: node?.left, level: level - 1, array: &array)
        levelOrderTraversal(node: node?.right, level: level - 1, array: &array)
    }

    public var preorderTraversal: [T] {
        if isEmpty {
            return []
        }

        var array: [T] = []

        preorderTraversal(node: root, array: &array)

        return array
    }

    private func preorderTraversal(node: Node<T>?, array: inout [T]) {
        if node == nil {
            return
        }

        array.append(node!.data)
        if node?.left != nil { preorderTraversal(node: node?.left, array: &array) }
        if node?.right != nil { preorderTraversal(node: node?.right, array: &array) }
    }

    public var inorderTraversal: [T] {
        if isEmpty {
            return []
        }

        var array: [T] = []

        inorderTraversal(node: root, array: &array)

        return array
    }

    private func inorderTraversal(node: Node<T>?, array: inout [T]) {
        if node == nil {
            return
        }

        if node?.left != nil { inorderTraversal(node: node?.left, array: &array) }
        array.append(node!.data)
        if node?.right != nil { inorderTraversal(node: node?.right, array: &array) }
    }

    public var postorderTraversal: [T] {
        if isEmpty {
            return []
        }

        var array: [T] = []

        postorderTraversal(node: root, array: &array)

        return array
    }

    private func postorderTraversal(node: Node<T>?, array: inout [T]) {
        if node == nil {
            return
        }

        if node?.left != nil { postorderTraversal(node: node?.left, array: &array) }
        if node?.right != nil { postorderTraversal(node: node?.right, array: &array) }
        array.append(node!.data)
    }
}

extension BinaryTree {
    public var preorderIterativeTraversal: [T] {
        if isEmpty { return [] }

        let stack = Stack<Node<T>>()
        // Push root into stack
        stack.push(data: root!)

        var array: [T] = []

        while stack.isEmpty == false {
            let deletedNode = stack.pop()!
            array.append(deletedNode.data)

            if let rightNode = deletedNode.right { stack.push(data: rightNode) }
            if let leftNode = deletedNode.left { stack.push(data: leftNode) }
        }

        return array
    }
}

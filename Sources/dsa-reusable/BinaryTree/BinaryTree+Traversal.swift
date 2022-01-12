//
//  BinaryTree+Traversal.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 10/01/2022.
//

import Foundation

extension BinaryTree {
    public func inorderTraversal() -> [T] {
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

    public func levelOrderTraversal() -> [T] {
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
}

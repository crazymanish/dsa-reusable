//
//  BinaryTree+Traversal.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 10/01/2022.
//

import Foundation

extension BinaryTree {
    public func inorderTraversal() {
        if isEmpty {
            print("Tree is empty!")
            return
        }

        inorderTraversal(node: root)
    }

    private func inorderTraversal(node: Node<T>?) {
        if node == nil {
            print("Nil")
            return
        }

        if node?.left != nil { inorderTraversal(node: node?.left) }
        print(node!.data)
        if node?.right != nil { inorderTraversal(node: node?.right) }
    }

    public func levelOrderTraversal() {
        if height == 0 {
            print("Tree is empty!")
            return
        }

        for currentLevel in 1...height {
            printLevelOrderTraversal(node: root, level: currentLevel)
        }
    }

    private func printLevelOrderTraversal(node: Node<T>?, level: Int) {
        if node == nil { return }

        if level == 1 {
            print(node!.data)
        }

        printLevelOrderTraversal(node: node?.left, level: level - 1)
        printLevelOrderTraversal(node: node?.right, level: level - 1)
    }
}

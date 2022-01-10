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
}

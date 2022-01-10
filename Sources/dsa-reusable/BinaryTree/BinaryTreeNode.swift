//
//  BinaryTreeNode.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 10/01/2022.
//

import Foundation

extension BinaryTree {
    public class Node<T: Equatable> {
        public let data: T
        public var left: Node<T>?
        public var right: Node<T>?

        public init(data: T, left: Node<T>? = nil, right: Node<T>? = nil) {
            self.data = data
            self.left = left
            self.right = right
        }
    }
}

extension BinaryTree.Node: Equatable {
    static public func == (lhs: BinaryTree.Node<T>, rhs: BinaryTree.Node<T>) -> Bool {
        if lhs.data == rhs.data && lhs.left === rhs.left && lhs.right === rhs.right { return true }

        return false
    }
}

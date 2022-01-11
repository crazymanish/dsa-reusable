//
//  BinaryTree+Helper.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 11/01/2022.
//

import Foundation

extension BinaryTree {
    public var height: Int {
        if isEmpty { return 0 }

        return height(node: root)
    }

    private func height(node: Node<T>?) -> Int {
        /* Base condition */
        if node == nil { return 0 }

        /* compute the height of each subtree */
        let leftHeight = height(node: node?.left)
        let rightHeight = height(node: node?.right)

        /* use the larger one */
        return max(leftHeight, rightHeight) + 1
    }
}

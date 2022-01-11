//
//  BinaryTreeTests.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 10/01/2022.
//

import XCTest
@testable import dsa_reusable

final class BinaryTreeTests: XCTestCase {
    func testIsEmpty() {
        var tree = BinaryTree<Int>()

        XCTAssertTrue(tree.isEmpty)
        XCTAssertEqual(tree.height, 0)

        tree.insert(data: 1)
        //1 will become root node of the tree
        print("Binary tree after insertion: ")
        tree.inorderTraversal()

        XCTAssertEqual(tree.height, 1)

        tree.insert(data: 2)
        tree.insert(data: 3)
        //2 will become left child and 3 will become right child of root node 1
        print("Binary tree after insertion: ")
        tree.inorderTraversal()

        XCTAssertEqual(tree.height, 2)

        tree.insert(data: 4)
        tree.insert(data: 5)
        //4 will become left child and 5 will become right child of node 2
        print("Binary tree after insertion: ")
        tree.inorderTraversal()

        XCTAssertEqual(tree.height, 3)

        tree.insert(data: 6)
        tree.insert(data: 7)
        //6 will become left child and 7 will become right child of node 3
        print("Binary tree after insertion: ")
        tree.inorderTraversal()

        XCTAssertFalse(tree.isEmpty)
        XCTAssertEqual(tree.height, 3)
    }
}

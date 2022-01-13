//
//  BinaryTreeTests.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 10/01/2022.
//

import XCTest
@testable import dsa_reusable

final class BinaryTreeTests: XCTestCase {
/*
        1
        /\
       2  3
      /\   /\
     4  5  6 7
 */
    func testTreeTraversals() {
        var tree = BinaryTree<Int>()

        XCTAssertTrue(tree.isEmpty)
        XCTAssertEqual(tree.height, 0)
        XCTAssertEqual(tree.levelOrderTraversal, [])
        XCTAssertEqual(tree.preorderTraversal, [])
        XCTAssertEqual(tree.preorderIterativeTraversal, [])
        XCTAssertEqual(tree.inorderTraversal, [])
        XCTAssertEqual(tree.postorderTraversal, [])

        tree.insert(data: 1)
        //1 will become root node of the tree
        XCTAssertEqual(tree.levelOrderTraversal, [1])
        XCTAssertEqual(tree.preorderTraversal, [1])
        XCTAssertEqual(tree.preorderIterativeTraversal, [1])
        XCTAssertEqual(tree.inorderTraversal, [1])
        XCTAssertEqual(tree.postorderTraversal, [1])

        XCTAssertFalse(tree.isEmpty)
        XCTAssertEqual(tree.height, 1)

        tree.insert(data: 2)
        tree.insert(data: 3)
        //2 will become left child and 3 will become right child of root node 1
        XCTAssertEqual(tree.levelOrderTraversal, [1, 2, 3])
        XCTAssertEqual(tree.preorderTraversal, [1, 2, 3])
        XCTAssertEqual(tree.preorderIterativeTraversal, [1, 2, 3])
        XCTAssertEqual(tree.inorderTraversal, [2, 1, 3])
        XCTAssertEqual(tree.postorderTraversal, [2, 3, 1])

        XCTAssertFalse(tree.isEmpty)
        XCTAssertEqual(tree.height, 2)

        tree.insert(data: 4)
        tree.insert(data: 5)
        //4 will become left child and 5 will become right child of node 2
        XCTAssertEqual(tree.levelOrderTraversal, [1, 2, 3, 4, 5])
        XCTAssertEqual(tree.preorderTraversal, [1, 2, 4, 5, 3])
        XCTAssertEqual(tree.preorderIterativeTraversal, [1, 2, 4, 5, 3])
        XCTAssertEqual(tree.inorderTraversal, [4, 2, 5, 1, 3])
        XCTAssertEqual(tree.postorderTraversal, [4, 5, 2, 3, 1])

        XCTAssertFalse(tree.isEmpty)
        XCTAssertEqual(tree.height, 3)

        tree.insert(data: 6)
        tree.insert(data: 7)
        //6 will become left child and 7 will become right child of node 3
        XCTAssertEqual(tree.levelOrderTraversal, [1, 2, 3, 4, 5, 6, 7])
        XCTAssertEqual(tree.preorderTraversal, [1, 2, 4, 5, 3, 6, 7])
        XCTAssertEqual(tree.preorderIterativeTraversal, [1, 2, 4, 5, 3, 6, 7])
        XCTAssertEqual(tree.inorderTraversal, [4, 2, 5, 1, 6, 3, 7])
        XCTAssertEqual(tree.postorderTraversal, [4, 5, 2, 6, 7, 3, 1])

        XCTAssertFalse(tree.isEmpty)
        XCTAssertEqual(tree.height, 3)
    }
}

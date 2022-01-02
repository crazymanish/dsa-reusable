//
//  StackLinkedListTests.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 02/01/2022.
//

import XCTest
@testable import dsa_reusable

final class StackLinkedListTests: XCTestCase {
    func testIsEmpty() {
        let stack = StackLinkedList<Int>()

        XCTAssertTrue(stack.isEmpty)
        XCTAssertNil(stack.peek)

        stack.push(data: 10)

        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.peek, 10)

        stack.push(data: 20)

        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.peek, 20)
    }

    func testPush() {
        let stack = StackLinkedList<Int>()

        stack.push(data: 10)
        stack.push(data: 20)
        stack.push(data: 30)
        stack.push(data: 40)

        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.peek, 40)
    }

    func testPop() {
        let stack = StackLinkedList<Int>()

        var deletedData = stack.pop()
        XCTAssertNil(deletedData)

        stack.push(data: 10)
        stack.push(data: 20)
        stack.push(data: 30)
        stack.push(data: 40)

        deletedData = stack.pop()
        XCTAssertEqual(deletedData, 40)

        deletedData = stack.pop()
        XCTAssertEqual(deletedData, 30)
    }
}

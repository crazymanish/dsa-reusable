//
//  StackTests.swift
//  dsa-reusableTests
//
//  Created by Manish Rathi on 02/01/2022.
//

import XCTest
@testable import dsa_reusable

final class StackTests: XCTestCase {
    func testIsEmpty() {
        let stack = Stack<Int>()

        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.array, [])
        XCTAssertEqual(stack.top, -1)
        XCTAssertNil(stack.peek)

        stack.push(data: 10)

        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.array, [10])
        XCTAssertEqual(stack.top, 0)
        XCTAssertEqual(stack.peek, 10)

        stack.push(data: 20)

        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.array, [10, 20])
        XCTAssertEqual(stack.top, 1)
        XCTAssertEqual(stack.peek, 20)
    }

    func testPush() {
        let stack = Stack<Int>()

        stack.push(data: 10)
        stack.push(data: 20)
        stack.push(data: 30)
        stack.push(data: 40)

        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.array, [10, 20, 30, 40])
        XCTAssertEqual(stack.top, 3)
        XCTAssertEqual(stack.peek, 40)
    }

    func testPop() {
        let stack = Stack<Int>()

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

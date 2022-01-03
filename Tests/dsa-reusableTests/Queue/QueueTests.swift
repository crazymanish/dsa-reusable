//
//  QueueTests.swift
//  dsa-reusableTests
//
//  Created by Manish Rathi on 03/01/2022.
//

import XCTest
@testable import dsa_reusable

final class QueueTests: XCTestCase {
    func testIsEmpty() {
        let queue = Queue<Int>()

        XCTAssertTrue(queue.isEmpty)
        XCTAssertEqual(queue.array, [])
        XCTAssertEqual(queue.rearIndex, -1)
        XCTAssertEqual(queue.frontIndex, -1)
        XCTAssertNil(queue.rearItem)
        XCTAssertNil(queue.frontItem)

        queue.enQueue(data: 10)

        XCTAssertFalse(queue.isEmpty)
        XCTAssertEqual(queue.array, [10])
        XCTAssertEqual(queue.rearIndex, 0)
        XCTAssertEqual(queue.frontIndex, 0)
        XCTAssertEqual(queue.rearItem, 10)
        XCTAssertEqual(queue.frontItem, 10)

        queue.enQueue(data: 20)

        XCTAssertFalse(queue.isEmpty)
        XCTAssertEqual(queue.array, [10, 20])
        XCTAssertEqual(queue.rearIndex, 1)
        XCTAssertEqual(queue.frontIndex, 0)
        XCTAssertEqual(queue.rearItem, 20)
        XCTAssertEqual(queue.frontItem, 10)
    }

    func testEnQueue() {
        let queue = Queue<Int>()

        queue.enQueue(data: 10)
        queue.enQueue(data: 20)
        queue.enQueue(data: 30)
        queue.enQueue(data: 40)

        XCTAssertFalse(queue.isEmpty)
        XCTAssertEqual(queue.array, [10, 20, 30, 40])
        XCTAssertEqual(queue.rearIndex, 3)
        XCTAssertEqual(queue.frontIndex, 0)
        XCTAssertEqual(queue.rearItem, 40)
        XCTAssertEqual(queue.frontItem, 10)
    }

    func testDeQueue() {
        let queue = Queue<Int>()

        var deletedData = queue.deQueue()
        XCTAssertNil(deletedData)

        queue.enQueue(data: 10)
        queue.enQueue(data: 20)
        queue.enQueue(data: 30)
        queue.enQueue(data: 40)

        deletedData = queue.deQueue()
        XCTAssertEqual(deletedData, 10)

        deletedData = queue.deQueue()
        XCTAssertEqual(deletedData, 20)
    }
}

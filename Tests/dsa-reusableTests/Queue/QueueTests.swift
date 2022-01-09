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
        var queue = Queue<Int>()

        XCTAssertTrue(queue.isEmpty)
        XCTAssertEqual(queue.array, [])
        XCTAssertEqual(queue.rearIndex, -1)
        XCTAssertEqual(queue.frontIndex, -1)
        XCTAssertNil(queue.rearData)
        XCTAssertNil(queue.frontData)

        queue.enQueue(data: 10)

        XCTAssertFalse(queue.isEmpty)
        XCTAssertEqual(queue.array, [10])
        XCTAssertEqual(queue.rearIndex, 0)
        XCTAssertEqual(queue.frontIndex, 0)
        XCTAssertEqual(queue.rearData, 10)
        XCTAssertEqual(queue.frontData, 10)

        queue.enQueue(data: 20)

        XCTAssertFalse(queue.isEmpty)
        XCTAssertEqual(queue.array, [10, 20])
        XCTAssertEqual(queue.rearIndex, 1)
        XCTAssertEqual(queue.frontIndex, 0)
        XCTAssertEqual(queue.rearData, 20)
        XCTAssertEqual(queue.frontData, 10)
    }

    func testEnQueue() {
        var queue = Queue<Int>()

        queue.enQueue(data: 10)
        queue.enQueue(data: 20)
        queue.enQueue(data: 30)
        queue.enQueue(data: 40)

        XCTAssertFalse(queue.isEmpty)
        XCTAssertEqual(queue.array, [10, 20, 30, 40])
        XCTAssertEqual(queue.rearIndex, 3)
        XCTAssertEqual(queue.frontIndex, 0)
        XCTAssertEqual(queue.rearData, 40)
        XCTAssertEqual(queue.frontData, 10)
    }

    func testDeQueue() {
        var queue = Queue<Int>()

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

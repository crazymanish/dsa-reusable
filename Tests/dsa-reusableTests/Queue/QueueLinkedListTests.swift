//
//  QueueLinkedListTests.swift
//  dsa-reusableTests
//
//  Created by Manish Rathi on 03/01/2022.
//

import XCTest
@testable import dsa_reusable

final class QueueLinkedListTests: XCTestCase {
    func testIsEmpty() {
        let queue = QueueLinkedList<Int>()

        XCTAssertTrue(queue.isEmpty)
        XCTAssertNil(queue.rearData)
        XCTAssertNil(queue.frontData)

        queue.enQueue(data: 10)

        XCTAssertFalse(queue.isEmpty)
        XCTAssertEqual(queue.rearData, 10)
        XCTAssertEqual(queue.frontData, 10)

        queue.enQueue(data: 20)

        XCTAssertFalse(queue.isEmpty)
        XCTAssertEqual(queue.rearData, 20)
        XCTAssertEqual(queue.frontData, 10)
    }

    func testEnQueue() {
        let queue = QueueLinkedList<Int>()

        queue.enQueue(data: 10)
        queue.enQueue(data: 20)
        queue.enQueue(data: 30)
        queue.enQueue(data: 40)

        XCTAssertFalse(queue.isEmpty)
        XCTAssertEqual(queue.rearData, 40)
        XCTAssertEqual(queue.frontData, 10)
    }

    func testDeQueue() {
        let queue = QueueLinkedList<Int>()

        var deletedData = queue.deQueue()
        XCTAssertNil(deletedData)

        queue.enQueue(data: 10)
        queue.enQueue(data: 20)
        queue.enQueue(data: 30)
        queue.enQueue(data: 40)

        deletedData = queue.deQueue()
        XCTAssertEqual(deletedData, 10)
        XCTAssertFalse(queue.isEmpty)

        deletedData = queue.deQueue()
        XCTAssertEqual(deletedData, 20)
        XCTAssertFalse(queue.isEmpty)

        deletedData = queue.deQueue()
        XCTAssertEqual(deletedData, 30)
        XCTAssertFalse(queue.isEmpty)

        deletedData = queue.deQueue()
        XCTAssertEqual(deletedData, 40)
        XCTAssertTrue(queue.isEmpty)
    }
}

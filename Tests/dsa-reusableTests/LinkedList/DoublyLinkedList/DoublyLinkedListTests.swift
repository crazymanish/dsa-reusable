//
//  DoublyLinkedListTests.swift
//  dsa-reusableTests
//
//  Created by Manish Rathi on 14/01/2022.
//

import XCTest
@testable import dsa_reusable

final class DoublyLinkedListTests: XCTestCase {
    func testIsEmpty() {
        let linkedList = DoublyLinkedList<Int>()

        XCTAssertTrue(linkedList.isEmpty)

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)

        XCTAssertEqual(linkedList.asArray, [2, 1])
        XCTAssertFalse(linkedList.isEmpty)
    }

    func testCount() {
        let linkedList = DoublyLinkedList<Int>()

        XCTAssertEqual(linkedList.count, 0)

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)

        XCTAssertEqual(linkedList.count, 2)
    }

    func testDeleteFromStart() {
        let linkedList = DoublyLinkedList<Int>()

        linkedList.insertAtStart(data: 10)
        linkedList.insertAtStart(data: 20)
        linkedList.insertAtStart(data: 30)
        linkedList.insertAtStart(data: 40)

        XCTAssertEqual(linkedList.asArray, [40, 30, 20, 10])

        let deletedData = linkedList.deleteFromStart()

        XCTAssertEqual(deletedData, 40)
        XCTAssertEqual(linkedList.asArray, [30, 20, 10])
    }

    func testDeleteWithData() {
        let linkedList = DoublyLinkedList<Int>()

        linkedList.insertAtStart(data: 10)
        linkedList.insertAtStart(data: 20)
        linkedList.insertAtStart(data: 30)
        linkedList.insertAtStart(data: 40)

        XCTAssertEqual(linkedList.asArray, [40, 30, 20, 10])

        linkedList.delete(data: 20)

        XCTAssertEqual(linkedList.asArray, [40, 30, 10])
    }
}

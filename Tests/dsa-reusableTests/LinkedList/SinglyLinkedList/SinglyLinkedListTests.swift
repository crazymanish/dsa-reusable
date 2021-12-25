//
//  SinglyLinkedListTests.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 22/12/2021.
//

import XCTest
@testable import dsa_reusable

final class SinglyLinkedListTests: XCTestCase {
    func testIsEmpty() {
        let linkedList = SinglyLinkedList<Int>()

        XCTAssertTrue(linkedList.isEmpty)

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)

        XCTAssertEqual(linkedList.asArray, [2, 1])
        XCTAssertFalse(linkedList.isEmpty)
    }

    func testCount() {
        let linkedList = SinglyLinkedList<Int>()

        XCTAssertEqual(linkedList.count, 0)

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)

        XCTAssertEqual(linkedList.count, 2)
    }

    func testDeleteFromStart() {
        let linkedList = SinglyLinkedList<Int>()

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)
        linkedList.insertAtStart(data: 3)
        linkedList.insertAtStart(data: 4)

        XCTAssertEqual(linkedList.asArray, [4, 3, 2, 1])

        let deletedData = linkedList.deleteFromStart()

        XCTAssertEqual(deletedData, 4)
        XCTAssertEqual(linkedList.asArray, [3, 2, 1])
    }

    func testDeleteWithData() {
        let linkedList = SinglyLinkedList<Int>()

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)
        linkedList.insertAtStart(data: 3)
        linkedList.insertAtStart(data: 4)

        XCTAssertEqual(linkedList.asArray, [4, 3, 2, 1])

        linkedList.delete(data: 2)

        XCTAssertEqual(linkedList.asArray, [4, 3, 1])
    }

    func testDeleteWithIndex() {
        let linkedList = SinglyLinkedList<Int>()

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)
        linkedList.insertAtStart(data: 3)
        linkedList.insertAtStart(data: 4)

        XCTAssertEqual(linkedList.asArray, [4, 3, 2, 1])

        let deletedData = linkedList.delete(at: 1)

        XCTAssertEqual(deletedData, 3)
        XCTAssertEqual(linkedList.asArray, [4, 2, 1])
    }

    func testDeleteList() {
        let linkedList = SinglyLinkedList<Int>()

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)
        linkedList.insertAtStart(data: 3)
        linkedList.insertAtStart(data: 4)

        XCTAssertEqual(linkedList.asArray, [4, 3, 2, 1])

        linkedList.deleteList()

        XCTAssertEqual(linkedList.asArray, [])
    }

    func testSearch() {
        let linkedList = SinglyLinkedList<Int>()

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)
        linkedList.insertAtStart(data: 3)
        linkedList.insertAtStart(data: 4)

        XCTAssertTrue(linkedList.search(data: 3))
        XCTAssertFalse(linkedList.search(data: 5))
    }

    func testSearchAtIndex() {
        let linkedList = SinglyLinkedList<Int>()

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)
        linkedList.insertAtStart(data: 3)
        linkedList.insertAtStart(data: 4)

        XCTAssertEqual(linkedList.asArray, [4, 3, 2, 1])
        XCTAssertEqual(linkedList.search(at: 0), 4)
        XCTAssertNil(linkedList.search(at: 5))
    }

    func testSearchFromEndAtIndex() {
        let linkedList = SinglyLinkedList<Int>()

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)
        linkedList.insertAtStart(data: 3)
        linkedList.insertAtStart(data: 4)
        linkedList.insertAtStart(data: 5)
        linkedList.insertAtStart(data: 6)
        linkedList.insertAtStart(data: 7)
        linkedList.insertAtStart(data: 8)

        XCTAssertEqual(linkedList.asArray, [8, 7, 6, 5, 4, 3, 2, 1])
        XCTAssertEqual(linkedList.searchFromEnd(at: 2), 3)
        XCTAssertNil(linkedList.searchFromEnd(at: 10))
    }
}

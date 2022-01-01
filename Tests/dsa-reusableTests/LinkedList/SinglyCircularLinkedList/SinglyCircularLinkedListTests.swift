//
//  SinglyCircularLinkedListTests.swift
//  dsa-reusableTests
//
//  Created by Manish Rathi on 30/12/2021.
//

import XCTest
@testable import dsa_reusable

final class SinglyCircularLinkedListTests: XCTestCase {
    func testIsEmpty() {
        let linkedList = SinglyCircularLinkedList<Int>()

        XCTAssertTrue(linkedList.isEmpty)

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)
        linkedList.insertAtStart(data: 3)
        linkedList.insertAtStart(data: 4)

        XCTAssertEqual(linkedList.asArray, [1, 2, 3, 4])
        XCTAssertFalse(linkedList.isEmpty)
    }

    func testCount() {
        let linkedList = SinglyCircularLinkedList<Int>()

        XCTAssertEqual(linkedList.count, 0)

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)

        XCTAssertEqual(linkedList.count, 2)
    }

    func testDeleteFromStart() {
        let linkedList = SinglyCircularLinkedList<Int>()

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)
        linkedList.insertAtStart(data: 3)
        linkedList.insertAtStart(data: 4)

        XCTAssertEqual(linkedList.asArray, [1, 2, 3, 4])

        let deletedData = linkedList.deleteFromStart()

        XCTAssertEqual(deletedData, 1)
        XCTAssertEqual(linkedList.asArray, [2, 3, 4])
    }

    func testDeleteWithData() {
        let linkedList = SinglyCircularLinkedList<Int>()

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)
        linkedList.insertAtStart(data: 3)
        linkedList.insertAtStart(data: 4)

        XCTAssertEqual(linkedList.asArray, [1, 2, 3, 4])

        linkedList.delete(data: 2)

        XCTAssertEqual(linkedList.asArray, [1, 3, 4])
    }

    func testDeleteWithIndex() {
        let linkedList = SinglyCircularLinkedList<Int>()

        linkedList.insertAtStart(data: 10)
        linkedList.insertAtStart(data: 20)
        linkedList.insertAtStart(data: 30)
        linkedList.insertAtStart(data: 40)

        XCTAssertEqual(linkedList.asArray, [10, 20, 30, 40])

        let deletedData = linkedList.delete(at: 1)

        XCTAssertEqual(deletedData, 20)
        XCTAssertEqual(linkedList.asArray, [10, 30, 40])
    }

    func testSearch() {
        let linkedList = SinglyCircularLinkedList<Int>()

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)
        linkedList.insertAtStart(data: 3)
        linkedList.insertAtStart(data: 4)

        XCTAssertTrue(linkedList.search(data: 3))
        XCTAssertFalse(linkedList.search(data: 5))
    }

    func testSearchAtIndex() {
        let linkedList = SinglyCircularLinkedList<Int>()

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)
        linkedList.insertAtStart(data: 3)
        linkedList.insertAtStart(data: 4)

        XCTAssertEqual(linkedList.asArray, [1, 2, 3, 4])
        XCTAssertEqual(linkedList.search(at: 0), 1)
        XCTAssertNil(linkedList.search(at: 5))
    }
}

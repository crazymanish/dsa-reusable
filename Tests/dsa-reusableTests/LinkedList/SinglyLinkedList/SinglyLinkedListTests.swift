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
}

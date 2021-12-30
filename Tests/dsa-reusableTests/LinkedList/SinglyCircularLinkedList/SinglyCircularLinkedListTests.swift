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

        XCTAssertEqual(linkedList.asArray, [2, 1])
        XCTAssertFalse(linkedList.isEmpty)
    }

    func testCount() {
        let linkedList = SinglyCircularLinkedList<Int>()

        XCTAssertEqual(linkedList.count, 0)

        linkedList.insertAtStart(data: 1)
        linkedList.insertAtStart(data: 2)

        XCTAssertEqual(linkedList.count, 2)
    }
}

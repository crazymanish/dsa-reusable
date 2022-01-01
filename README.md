# dsa-reusable
Swift package for DataStructure&Algorithms reusability

![![License]](https://img.shields.io/badge/license-MIT-green.svg?style=flat)
[![Twitter: @iammanishrathi](https://img.shields.io/badge/contact-@iammanishrathi-blue.svg?style=flat)](https://twitter.com/iammanishrathi)
------

### Integration
- Add the package to your project: go to the File menu and choose Swift Packages > Add Package Dependency. For the URL enter https://github.com/crazymanish/dsa-reusable
- Xcode will fetch the package, read its configuration, and show you a new screen asking you which version you want to use. Click Finish to make Xcode add it to the project. You should see it appear in the project navigator, under `Swift Package Dependencies`.
- To try it out,
```swift
import dsa_reusable

let singlyLinkedList = SinglyLinkedList<Int>()
singlyLinkedList.insertAtStart(data: 1)
singlyLinkedList.insertAtStart(data: 2)
singlyLinkedList.insertAtStart(data: 3)

print("Input: \(singlyLinkedList.count)")
print("Input: \(singlyLinkedList.asArray)")
...
...
```

- [X] [**Singly LinkedList**](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyLinkedList/SinglyLinkedList.swift) :: [**_Unit Tests_**](https://github.com/crazymanish/dsa-reusable/blob/main/Tests/dsa-reusableTests/LinkedList/SinglyLinkedList/SinglyLinkedListTests.swift)
  - [Insert node at start(head)](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyLinkedList/SinglyLinkedList.swift#L43)
  - [Delete node from start(head)](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyLinkedList/SinglyLinkedList.swift#L54)
  - [Delete node using data key](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyLinkedList/SinglyLinkedList.swift#L64)
  - [Delete node at index](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyLinkedList/SinglyLinkedList.swift#L87)
  - [Search node using data key](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyLinkedList/SinglyLinkedList.swift#L121)
  - [Search node at index](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyLinkedList/SinglyLinkedList.swift#L135)
  - [Search node from End at index](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyLinkedList/SinglyLinkedList.swift#L151)
  - Helpers:
    - [isEmpty](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyLinkedList/SinglyLinkedList.swift#L13),
    - [count (length of List)](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyLinkedList/SinglyLinkedList.swift#L29),
    - [asArray](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyLinkedList/SinglyLinkedList.swift#L15),
    - [printList](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyLinkedList/SinglyLinkedList.swift#L135),
    - [deleteList](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyLinkedList/SinglyLinkedList.swift#L117)

- [X] [**Singly Circular LinkedList**](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyCircularLinkedList/SinglyCircularLinkedList.swift) :: [**_Unit Tests_**](https://github.com/crazymanish/dsa-reusable/blob/main/Tests/dsa-reusableTests/LinkedList/SinglyCircularLinkedList/SinglyCircularLinkedListTests.swift)
  - [Insert node at start(head)](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyCircularLinkedList/SinglyCircularLinkedList.swift#L46)
  - [Delete node from start(head)](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyCircularLinkedList/SinglyCircularLinkedList.swift#L81)
  - [Delete node using data key](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyCircularLinkedList/SinglyCircularLinkedList.swift#L91)
  - [Delete node at index](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyCircularLinkedList/SinglyCircularLinkedList.swift#L114)
  - [Search node using data key](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyCircularLinkedList/SinglyCircularLinkedList.swift#L138)
  - [Search node at index](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyCircularLinkedList/SinglyCircularLinkedList.swift#L152)
  - Helpers:
    - [isEmpty](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyCircularLinkedList/SinglyCircularLinkedList.swift#L13),
    - [count (length of List)](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyCircularLinkedList/SinglyCircularLinkedList.swift#L31),
    - [asArray](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyCircularLinkedList/SinglyCircularLinkedList.swift#L15),
    - [printList](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyCircularLinkedList/SinglyCircularLinkedList.swift#L59),
    - [deleteList](https://github.com/crazymanish/dsa-reusable/blob/main/Sources/dsa-reusable/LinkedList/SinglyCircularLinkedList/SinglyCircularLinkedList.swift#L59)

- [ ] **Doubly LinkedList**

//
//  Array+Joined.swift
//  dsa-reusable
//
//  Created by Manish Rathi on 22/12/2021.
//

import Foundation

public extension Array where Element == Int {
    var joined: String {
        let arrayAsString = map { String($0) }
        return arrayAsString.joined(separator: ", ")
    }
}

//
//  Collections+Helpers.swift
//  
//
//  Created by Chelsey Baker on 10/25/23.
//

import Foundation

extension Array where Element: Equatable {

    func unique() -> Array {
        var uniqueItems: [Element] = []
        for item in self {
            guard !uniqueItems.contains(item) else { continue }
            uniqueItems.append(item)
        }
        return uniqueItems
    }

}

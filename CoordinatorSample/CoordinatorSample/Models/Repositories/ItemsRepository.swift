//
//  ItemsRepository.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import Foundation

// This is just for sample implementation
// In real apps, you get data from APIs, database, ..
final class ItemsRepository {

    static let shared = ItemsRepository()

    private let items: [Int: Item] = [
        1: Item(name: "item 1", userId: 1),
        2: Item(name: "item 2", userId: 2),
        3: Item(name: "item 3", userId: 3)
    ]

    var itemsForFeed: [Item] {
        return items.map { _, value -> Item in
            return value
        }
    }

    func getItem(itemId: Int) -> Item? {
        return items[itemId]
    }
}

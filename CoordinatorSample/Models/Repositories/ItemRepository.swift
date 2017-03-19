//
//  ItemRepository.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import Foundation

// This is just for sample implementation
// In real apps, you get data from APIs, database, ..
final class ItemRepository {

    static let shared = ItemRepository()

    private let itemDetails: [ItemDetail] = [
        ItemDetail(
            itemId: 1,
            name: "item 1",
            user: User(userId: 1, name: "user 1")
        ),
        ItemDetail(
            itemId: 2,
            name: "item 2",
            user: User(userId: 2, name: "user 2")
        ),
        ItemDetail(
            itemId: 3,
            name: "item 3",
            user: User(userId: 3, name: "user 3")
        )
    ]

    var itemsForFeed: [Item] {
        return itemDetails.map { $0.item }
    }

    var itemsForSearchResult: [Item] {
        return itemDetails.map { $0.item }.filter { $0.itemId < 3 }
    }

    func getDetail(of item: Item) -> ItemDetail? {
        return itemDetails.filter { $0.itemId == item.itemId }.first
    }
}

fileprivate extension ItemDetail {
    var item: Item {
        return Item(itemId: itemId, name: name)
    }
}

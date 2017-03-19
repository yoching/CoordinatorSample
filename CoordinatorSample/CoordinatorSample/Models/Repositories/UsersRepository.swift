//
//  UsersRepository.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import Foundation

// This is just for sample implementation
// In real apps, you get data from APIs, database, ..
final class UsersRepository {

    static let shared = UsersRepository()

    private let users: [Int: User] = [
        1: User(name: "user 1", items: [Item(name: "item 1", userId: 1)]),
        2: User(name: "user 2", items: [Item(name: "item 2", userId: 2)]),
        3: User(name: "user 3", items: [Item(name: "item 3", userId: 3)])
    ]

    var usersForUsers: [User] {
        return users.map { _, value -> User in
            return value
        }
    }

    func getUser(userId: Int) -> User? {
        return users[userId]
    }
}

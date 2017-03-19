//
//  UserRepository.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import Foundation

// This is just for sample implementation
// In real apps, you get data from APIs, database, ..
final class UserRepository {

    static let shared = UserRepository()

    private let userDetails: [UserDetail] = [
        UserDetail(
            userId: 1,
            name: "user 1",
            items: [Item(itemId: 1, name: "item 1")]
        ),
        UserDetail(
            userId: 2,
            name: "user 2",
            items: [Item(itemId: 2, name: "item 2")]
        ),
        UserDetail(
            userId: 3,
            name: "user 3",
            items: [Item(itemId: 3, name: "item 3")]
        )
    ]

    var usersForUsers: [User] {
        return userDetails.map { $0.user }
    }

    func getDetail(of user: User) -> UserDetail? {
        return userDetails.filter { $0.userId == user.userId }.first
    }
}

fileprivate extension UserDetail {
    var user: User {
        return User(userId: userId, name: name)
    }
}

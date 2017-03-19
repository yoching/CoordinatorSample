//
//  User.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import Foundation

struct User {
    let name: String
}

extension User {
    static let users: [User] = [
        User(name: "user 1"),
        User(name: "user 2"),
        User(name: "user 3"),
        User(name: "user 4"),
        User(name: "user 5"),
        User(name: "user 6"),
        User(name: "user 7"),
        User(name: "user 8"),
        User(name: "user 9"),
        User(name: "user 10")
    ]
}

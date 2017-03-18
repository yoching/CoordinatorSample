//
//  DetailsPresentable.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

protocol DetailsPresentable {
    func showDetail(of item: Item)
    func showDetail(of user: User)
}

extension DetailsPresentable where Self: NavigationCoordinator {
    func showDetail(of item: Item) {

    }
    func showDetail(of user: User) {

    }
}

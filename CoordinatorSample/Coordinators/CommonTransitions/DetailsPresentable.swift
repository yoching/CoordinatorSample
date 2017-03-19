//
//  DetailsPresentable.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import Foundation

protocol DetailsPresentable {
    func showItemDetail(item: Item)
    func showUserDetail(user: User)
}

extension DetailsPresentable where Self: NavigationCoordinator {
    func showItemDetail(item: Item) {
        let itemDetailVC = StoryboardScene.ItemDetailViewController.initialViewController()
        itemDetailVC.item = item
        itemDetailVC.userTapped = showUserDetail
        navigationController.pushViewController(itemDetailVC, animated: true)
    }

    func showUserDetail(user: User) {
        let userDetailVC = StoryboardScene.UserDetailViewController.initialViewController()
        userDetailVC.user = user
        userDetailVC.itemSelected = showItemDetail
        navigationController.pushViewController(userDetailVC, animated: true)
    }
}

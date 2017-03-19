//
//  UsersCoordinator.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class UsersCoordinator: NavigationCoordinator, DetailsPresentable {

    let navigationController: UINavigationController

    init(presenter: UINavigationController) {
        self.navigationController = presenter
        presenter.title = "users"
    }

    func start() {
        let usersViewController = StoryboardScene.UsersTableViewController.initialViewController()
        usersViewController.userSelected = showUserDetail
        navigationController.pushViewController(usersViewController, animated: false)
    }
}

//
//  UsersCoordinator.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class UsersCoordinator: NavigationCoordinator {

    let navigationController: UINavigationController

    init(presenter: UINavigationController) {
        self.navigationController = presenter
        presenter.title = "users"
    }

    func start() {
        let usersViewController = StoryboardScene.UsersTableViewController.initialViewController()
        usersViewController.userSelected = showDetail
        navigationController.pushViewController(usersViewController, animated: false)
    }

    private func showDetail(of user: User) {
        let detailViewController = StoryboardScene.UserDetailViewController.initialViewController()
        detailViewController.user = user
        navigationController.pushViewController(detailViewController, animated: true)
    }
}

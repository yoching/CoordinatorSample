//
//  MainTabCoordinator.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class MainTabCoordinator: TabBarCoordinator {

    let tabBarController: UITabBarController
    private let childCoordinators: [Coordinator]

    init(presenter: UITabBarController, childCoordinators: [Coordinator]) {
        self.tabBarController = presenter
        self.childCoordinators = childCoordinators
    }

    func start() {
        childCoordinators.forEach { coordinator in
            coordinator.start()
        }
        tabBarController.setViewControllers(
            childCoordinators.map { $0.presenter },
            animated: false
        )
    }
}

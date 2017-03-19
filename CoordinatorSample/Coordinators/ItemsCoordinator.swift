//
//  ItemsCoordinator.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class ItemsCoordinator: NavigationCoordinator, DetailsPresentable {

    let navigationController: UINavigationController

    init(presenter: UINavigationController) {
        self.navigationController = presenter
        presenter.title = "items"
    }

    func start() {
        let itemsViewController = StoryboardScene.ItemsTableViewController.initialViewController()
        itemsViewController.itemSelected = showItemDetail
        navigationController.pushViewController(itemsViewController, animated: false)
    }

//    private func showDetail(of item: Item) {
//        let detailViewController = StoryboardScene.ItemDetailViewController.initialViewController()
//        detailViewController.item = item
//        navigationController.pushViewController(detailViewController, animated: true)
//    }
}

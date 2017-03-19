//
//  SearchCoordinator.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class SearchCoordinator: NavigationCoordinator, DetailsPresentable {

    let navigationController: UINavigationController

    init(presenter: UINavigationController) {
        self.navigationController = presenter
        presenter.title = "Search"
    }

    func start() {
        let searchViewController = StoryboardScene.SearchViewController.initialViewController()
        searchViewController.searchTapped = showSearchResult
        navigationController.pushViewController(searchViewController, animated: false)
    }

    private func showSearchResult() {
        let resultViewController = StoryboardScene.SearchResultViewController.initialViewController()
        resultViewController.itemSelected = showItemDetail
        navigationController.pushViewController(resultViewController, animated: true)
    }
}

//
//  AppDelegate.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/18/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var appCoordinator: AppCoordinator?

    // swiftlint:disable:next line_length
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)

        let feedNavigationController = UINavigationController()
        feedNavigationController.title = "feed"

        let searchNavigationController = UINavigationController()
        searchNavigationController.title = "search"
        let feedCoordinator = FeedCoordinator(presenter: feedNavigationController)
        let searchCoordinator = SearchCoordinator(presenter: searchNavigationController)

        let mainTabCoordinator = MainTabCoordinator(
            presenter: UITabBarController(),
            childCoordinators: [feedCoordinator, searchCoordinator]
        )

        appCoordinator = AppCoordinator(window: window!, rootCoordinator: mainTabCoordinator)

        appCoordinator?.start()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }

}

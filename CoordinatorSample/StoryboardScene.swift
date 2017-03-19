// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation
import UIKit

// swiftlint:disable file_length
// swiftlint:disable line_length
// swiftlint:disable type_body_length

protocol StoryboardSceneType {
  static var storyboardName: String { get }
}

extension StoryboardSceneType {
  static func storyboard() -> UIStoryboard {
    return UIStoryboard(name: self.storyboardName, bundle: Bundle(for: BundleToken.self))
  }

  static func initialViewController() -> UIViewController {
    guard let vc = storyboard().instantiateInitialViewController() else {
      fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
    }
    return vc
  }
}

extension StoryboardSceneType where Self: RawRepresentable, Self.RawValue == String {
  func viewController() -> UIViewController {
    return Self.storyboard().instantiateViewController(withIdentifier: self.rawValue)
  }
  static func viewController(identifier: Self) -> UIViewController {
    return identifier.viewController()
  }
}

protocol StoryboardSegueType: RawRepresentable { }

extension UIViewController {
  func perform<S: StoryboardSegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }
}

enum StoryboardScene {
  enum ItemDetailViewController: StoryboardSceneType {
    static let storyboardName = "ItemDetailViewController"

    static func initialViewController() -> CoordinatorSample.ItemDetailViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? CoordinatorSample.ItemDetailViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }
  }
  enum ItemsTableViewController: StoryboardSceneType {
    static let storyboardName = "ItemsTableViewController"

    static func initialViewController() -> CoordinatorSample.ItemsTableViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? CoordinatorSample.ItemsTableViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }
  }
  enum LaunchScreen: StoryboardSceneType {
    static let storyboardName = "LaunchScreen"
  }
  enum UserDetailViewController: StoryboardSceneType {
    static let storyboardName = "UserDetailViewController"

    static func initialViewController() -> CoordinatorSample.UserDetailViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? CoordinatorSample.UserDetailViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }
  }
  enum UsersTableViewController: StoryboardSceneType {
    static let storyboardName = "UsersTableViewController"

    static func initialViewController() -> CoordinatorSample.UsersTableViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? CoordinatorSample.UsersTableViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }
  }
}

enum StoryboardSegue {
}

private final class BundleToken {}

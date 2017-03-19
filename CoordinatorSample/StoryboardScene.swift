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
  enum FeedViewController: StoryboardSceneType {
    static let storyboardName = "FeedViewController"

    static func initialViewController() -> CoordinatorSample.FeedViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? CoordinatorSample.FeedViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }
  }
  enum ItemDetailViewController: StoryboardSceneType {
    static let storyboardName = "ItemDetailViewController"

    static func initialViewController() -> CoordinatorSample.ItemDetailViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? CoordinatorSample.ItemDetailViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }
  }
  enum LaunchScreen: StoryboardSceneType {
    static let storyboardName = "LaunchScreen"
  }
  enum SearchResultViewController: StoryboardSceneType {
    static let storyboardName = "SearchResultViewController"

    static func initialViewController() -> CoordinatorSample.SearchResultViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? CoordinatorSample.SearchResultViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }
  }
  enum SearchViewController: StoryboardSceneType {
    static let storyboardName = "SearchViewController"

    static func initialViewController() -> CoordinatorSample.SearchViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? CoordinatorSample.SearchViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }
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
}

enum StoryboardSegue {
}

private final class BundleToken {}

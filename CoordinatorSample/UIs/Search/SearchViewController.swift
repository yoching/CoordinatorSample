//
//  SearchViewController.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class SearchViewController: UIViewController {

    var searchTapped: ((Void) -> Void)?

    @IBAction func searchButtonTapped(_ sender: Any) {
        searchTapped?()
    }
}

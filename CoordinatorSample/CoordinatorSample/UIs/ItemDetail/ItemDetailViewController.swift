//
//  ItemDetailViewController.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class ItemDetailViewController: UIViewController {

    var item: Item?

    @IBOutlet weak var itemNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        itemNameLabel.text = item?.name
    }

}

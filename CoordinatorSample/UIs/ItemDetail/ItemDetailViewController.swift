//
//  ItemDetailViewController.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class ItemDetailViewController: UIViewController {

    var userTapped: ((User) -> Void)?

    var item: Item?
    private var itemDetail: ItemDetail?

    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var userNameButton: UIButton!
    @IBAction func userNameTapped(_ sender: Any) {
        guard let itemDetail = itemDetail else {
            return
        }
        userTapped?(itemDetail.user)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let item = item else {
            return
        }
        itemDetail = ItemRepository.shared.getDetail(of: item)
        self.title = itemDetail?.name
        itemNameLabel.text = itemDetail?.name
        userNameButton.setTitle(itemDetail?.user.name, for: .normal)
    }

}

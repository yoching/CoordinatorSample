//
//  UserDetailViewController.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class UserDetailViewController: UIViewController {

    var itemSelected: ((Item) -> Void)?

    var user: User?
    fileprivate var userDetail: UserDetail?

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var itemTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let user = user else {
            return
        }
        self.title = user.name
        userDetail = UserRepository.shared.getDetail(of: user)
        userNameLabel.text = userDetail?.name
        itemTableView.reloadData()
    }
}

extension UserDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userDetail?.items.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        if let userDetail = userDetail {
            cell.textLabel?.text = userDetail.items[indexPath.row].name
        }
        return cell
    }
}

extension UserDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let userDetail = userDetail else {
            return
        }
        itemSelected?(userDetail.items[indexPath.row])
    }
}

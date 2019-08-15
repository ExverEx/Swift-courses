//
//  FriendsListVC.swift
//  lesson_2
//
//  Created by Alexander on 15/08/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

class FriendsListVC: UITableViewController {

    var friends: [String] = ["Киану Ривз", "Дядя Ваня", "Ктулху", "Джони Депп", "Алекс"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell") as! FriendsCell
        cell.setupWithFriends(friends[indexPath.row])
        return cell
    }
}

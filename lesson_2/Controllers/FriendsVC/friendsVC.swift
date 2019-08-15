//
//  friendsVC.swift
//  lesson_2
//
//  Created by Alexander on 15/08/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

class friendsVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var friends: [String] = ["Киану Ривз", "Дядя Ваня", "Ктулху"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

       tableView.dataSource = self
//        tableView.delegate = self
        
    }
    
    @IBAction func addFriendButton(_ sender: Any) {
        performSegue(withIdentifier: "toSelect", sender: self)
    }
    
    
}

extension friendsVC: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell") as! FriendsCell
        cell.setupWithFriends(friends[indexPath.row])
        return cell
    }
    
}

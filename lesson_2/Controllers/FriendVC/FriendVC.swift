//
//  FriendVC.swift
//  lesson_2
//
//  Created by Alexander on 25/08/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

class FriendVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var friends: [String] = ["Киану Ривз", "Тревор", "Ибрагим"]
//    var avatars: [UIImage] = [UIImage(named: "1 киану"), UIImage(named: "2 тревор"), UIImage(named: "3 ибрагим")]
    var avatars = UIImage(named: "1 киану")!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
//        tableView.delegate = self

    }
}
    
    extension FriendVC: UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return friends.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell") as! FriendCell
            
            cell.setupWithFriend(friends[indexPath.row])

            return cell
        }
        
}




//
//  GroupsVC.swift
//  lesson_2
//
//  Created by Alexander on 28/08/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

class GroupsVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var groups: [String] = ["Люди", "Кино", "Игры"]
    //    var avatars: [UIImage] = [UIImage(named: "1 киану"), UIImage(named: "2 тревор"), UIImage(named: "3 ибрагим")]
    var groupsImg = UIImage(named: "2 тревор")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        //        tableView.delegate = self
        
    }
    
    @IBAction func addGroupButtonTab(_ sender: Any) {
        performSegue(withIdentifier: "ToAddGroups", sender: nil)
    }
    
}

extension GroupsVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell") as! GroupCell
        
        cell.setupWithGroups(groups[indexPath.row])
        
        return cell
    }
    
}

//
//  GroupsList.swift
//  lesson_2
//
//  Created by Alexander on 28/08/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

class GroupsList: UITableViewController {

    var groups: [String] = ["Катышки", "Треш", "Вите надо выйти"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell") as! GroupCell
        
        cell.setupWithGroups(groups[indexPath.row])
        
        return cell
    }
    
}

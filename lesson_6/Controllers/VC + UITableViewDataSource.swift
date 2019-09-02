//
//  VC + UITableViewDataSource.swift
//  lesson_6
//
//  Created by Alexander on 02/09/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell") as! NewsCell
        cell.setupCellFromNews(news[indexPath.row])
        return cell
    }
    
}

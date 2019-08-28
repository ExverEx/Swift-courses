//
//  GroupCell.swift
//  lesson_2
//
//  Created by Alexander on 28/08/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {
    
    @IBOutlet weak var groupLabel: UILabel!
    @IBOutlet weak var groupImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setupWithGroups(_ groups: String) {
        
        groupLabel.text = groups
        groupImg.image = UIImage(named: "1 киану")
        
    }
    
}

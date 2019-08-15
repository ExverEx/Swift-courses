//
//  FriendsCell.swift
//  lesson_2
//
//  Created by Alexander on 15/08/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

class FriendsCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupWithFriends(_ friend: String) {
        label.text = friend
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

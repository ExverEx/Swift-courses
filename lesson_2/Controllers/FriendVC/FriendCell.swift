//
//  FriendCell.swift
//  lesson_2
//
//  Created by Alexander on 25/08/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupWithFriend(_ friend: String) {
        
        label.text = friend
        avatar.image = UIImage(named: "1 киану")
        
    }
    
}

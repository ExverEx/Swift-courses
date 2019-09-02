//
//  NewsCell.swift
//  lesson_6
//
//  Created by Alexander on 02/09/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var discLabel: UILabel!
    @IBOutlet weak var picImgView: UIImageView!
    
    @IBOutlet weak var likeCount: UILabel!
    
    var likes = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    self.selectionStyle = .none
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setupCellFromNews(_ news: News) {
        self.titleLabel.text = news.title
        self.discLabel.text = news.discText
        self.picImgView.image = UIImage(named: news.imageName ?? "")
    }
    
    @IBAction func likeButton(_ sender: Any) {
        
        likes += 1
        likeCount.text = "\(likes)"
        
    }
    
    
}

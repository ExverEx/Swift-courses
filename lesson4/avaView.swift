//
//  AvaView.swift
//  lesson4
//
//  Created by Alexander on 19/08/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

class AvaView: UIView {
    
    @IBOutlet weak var avaView: UIView!
    @IBOutlet weak var avaImage: UIImageView!

        @IBInspectable var shadowRadius: CGFloat = 10 {
            didSet {
                setNeedsDisplay()
            }
        }
            @IBInspectable var shadowColor: CGColor = UIColor.black.cgColor {
                didSet {
                    setNeedsDisplay()
                }
            }
            @IBInspectable var shadowOpacity: Float = 0.7 {
            didSet {
                setNeedsDisplay()
            }
        }
        
        override func draw(_ rect: CGRect) {
            
            avaView.layer.cornerRadius = 1
            avaView.layer.contents = UIImage(named: "1")?.cgImage
            avaView.layer.masksToBounds = false
            avaView.layer.contentsGravity = .resize
            
            avaImage.frame = self.frame
            avaImage.layer.backgroundColor = UIColor.black.cgColor
            avaImage.layer.shadowColor = UIColor.black.cgColor
            avaImage.layer.cornerRadius = 150
            avaImage.layer.shadowRadius = shadowRadius
            avaImage.layer.shadowOpacity = shadowOpacity
            //        self.addSubview(avaShadow)
            //        self.sendSubviewToBack(avaShadow)
            
            
        }
        
    }
    }


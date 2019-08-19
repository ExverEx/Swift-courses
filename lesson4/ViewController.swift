//
//  ViewController.swift
//  lesson4
//
//  Created by Alexander on 18/08/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

@IBDesignable class ViewController: UIViewController {

    @IBOutlet weak var ava: UIView!
    
//    @IBInspectable var shadowRadius: CGFloat = 10 {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//    @IBInspectable var shadowColor: CGColor = UIColor.black.cgColor {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//    @IBInspectable var shadowOpacity: Float = 0.7 {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            ava.layer.cornerRadius = 150
            ava.layer.contents = UIImage(named: "1")?.cgImage
            ava.layer.masksToBounds = true
            ava.layer.contentsGravity = .resize
        
        let avaShadow = UIView()
            avaShadow.frame = ava.frame
            avaShadow.layer.backgroundColor = UIColor.black.cgColor
            avaShadow.layer.shadowColor = UIColor.black.cgColor
            avaShadow.layer.cornerRadius = 150
            avaShadow.layer.shadowRadius = 10
            avaShadow.layer.shadowOpacity = 0.7
            view.addSubview(avaShadow)
            view.sendSubviewToBack(avaShadow)
            
            
        }
    }

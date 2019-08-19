//
//  CircleView.swift
//  lesson4
//
//  Created by Alexander on 18/08/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

@IBDesignable class CircleView: UIView {
    
    @IBOutlet weak var ava: UIView!
    
//    @IBInspectable var radius: CGFloat = 50{
//        didSet {
//            setNeedsDisplay()
//        }
//    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.setFillColor(UIColor.black.cgColor)
        context.fillEllipse(in: CGRect(x: rect.midX,
                                       y: rect.midY,
                                       width: radius * 2,
                                       height: radius * 2))
    }

}

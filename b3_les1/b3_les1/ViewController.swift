//
//  ViewController.swift
//  b3_les1
//
//  Created by Alexander on 23/10/2019.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let session = Session.instance
        session.token = "Petr Petrov"
        session.userId = 214
    }


}



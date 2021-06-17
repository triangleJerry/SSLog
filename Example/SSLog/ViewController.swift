//
//  ViewController.swift
//  SSLog
//
//  Created by 48409434 on 06/11/2021.
//  Copyright (c) 2021 48409434. All rights reserved.
//

import UIKit
import SSLog

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SSLog.print(.success, "Hi")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


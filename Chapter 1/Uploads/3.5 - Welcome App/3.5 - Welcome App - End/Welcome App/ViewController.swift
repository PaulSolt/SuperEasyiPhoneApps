//
//  ViewController.swift
//  Welcome App
//
//  Created by Paul Solt on 10/28/15.
//  Copyright © 2015 Paul Solt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        print("2nd")
    
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
    
        print("button Pressed!")
    }
}


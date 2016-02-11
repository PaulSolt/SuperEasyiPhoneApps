//
//  ViewController.swift
//  SuperEasyApps
//
//  Created by Paul Solt on 1/22/16.
//  Copyright © 2016 Paul Solt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonPressed(sender: AnyObject) {
        print("pressed! HI")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Hi Paul!")
    }

}


//
//  ViewController.swift
//  SampleApp
//
//  Created by Paul Solt on 1/21/16.
//  Copyright © 2016 Paul Solt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Hi Paul!")
        
        print("this was awesome!")
    
        defer {
            print("this is done at the end!")
        }
        
        print("at the end of viewDidLoad")
    
    }

}


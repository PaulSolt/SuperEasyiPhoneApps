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

    // Declare labels
    var welcomeLabel: UILabel!
    var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("2nd")
    
        addLabels()
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
    
        print("button Pressed!")
        
        helloLabel.text = "Coffee Time!"
    }
    
    func addLabels() {
        
        welcomeLabel = UILabel() // initialize
        welcomeLabel.text = "Welcome!"
        welcomeLabel.font = UIFont.systemFontOfSize(36)
        welcomeLabel.sizeToFit()
        welcomeLabel.center = CGPoint(x: 100, y: 240)
        view.addSubview(welcomeLabel)
        
        nameLabel = UILabel()
        nameLabel.text = "Paul Solt"
        nameLabel.font = UIFont.boldSystemFontOfSize(48)
        nameLabel.sizeToFit()
        nameLabel.center = CGPoint(x: 200, y: 290)
        view.addSubview(nameLabel)
        
    }
    
}


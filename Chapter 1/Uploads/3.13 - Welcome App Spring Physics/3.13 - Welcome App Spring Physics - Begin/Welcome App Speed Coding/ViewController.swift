//
//  ViewController.swift
//  Welcome App Speed Coding
//
//  Created by Paul Solt on 11/14/15.
//  Copyright © 2015 Paul Solt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var firstLabel: UILabel!
    
    // Variables (properties)
    var welcomeLabel: UILabel!
    var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addLabels()
    }
    
    // Actions
    @IBAction func buttonsPressed(sender: AnyObject) {
        print("button Pressed!")
        firstLabel.text = "You Pressed Me!"
        
        animateLabels()
    }
    
    // Method (block of code)
    
    func addLabels() {
        
        welcomeLabel = UILabel()
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
    
    func animateLabels() {
        
        // Setup initial animation conditions (location, transparency, etc)
        welcomeLabel.center = CGPoint(x: 100, y: 40)
        welcomeLabel.alpha = 0.0 // [0, 1]
        
        // Set new positions and animate (implicit animation)
        UIView.animateWithDuration(0.5) { () -> Void in
            
            self.welcomeLabel.center = CGPoint(x: 100, y: 240)
            self.welcomeLabel.alpha = 1.0 // fully opaque or visible
        }
        
        // setup animation starting values
        nameLabel.center = CGPoint(x: 200, y: 90)
        nameLabel.alpha = 0.0 // invisible
        
        // Animate to new positions and values
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: { () -> Void in
            
            self.nameLabel.center = CGPoint(x: 200, y: 290)
            self.nameLabel.alpha = 1.0 // visible
            
            }, completion: nil)
        
    }
    
    
    
}


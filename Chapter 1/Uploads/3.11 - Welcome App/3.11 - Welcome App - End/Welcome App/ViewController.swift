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
    var welcomeAppLabel: UILabel!
    var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("2nd")
    
        addLabels()
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
    
        print("button Pressed!")
        
        helloLabel.text = "Coffee Time!"
        
        //animateLabels()
        animateLabelsWithPhysics()
    }
    func addLabels() {
        
        welcomeAppLabel = UILabel() // initialize
        welcomeAppLabel.text = "Welcome!"
        welcomeAppLabel.font = UIFont.systemFontOfSize(36)
        welcomeAppLabel.sizeToFit()
        welcomeAppLabel.center = CGPoint(x: 100, y: 240)
        view.addSubview(welcomeAppLabel)
        
        nameLabel = UILabel()
        nameLabel.text = "Paul Solt"
        nameLabel.font = UIFont.boldSystemFontOfSize(48)
        nameLabel.sizeToFit()
        nameLabel.center = CGPoint(x: 200, y: 290)
        view.addSubview(nameLabel)
        
    }
    
    func animateLabels() {

        welcomeAppLabel.center = CGPoint(x: 100, y: 40)
        welcomeAppLabel.alpha = 0

        UIView.animateWithDuration(4.5, animations: { () -> Void in
            
            self.welcomeAppLabel.center = CGPoint(x: 100, y: 240)
            self.welcomeAppLabel.alpha = 1

            }, completion: nil)
        
        nameLabel.center = CGPoint(x: 200, y: 90)
        nameLabel.alpha = 0
        
        UIView.animateWithDuration(2.0, animations: { () -> Void in
            
            self.nameLabel.center = CGPoint(x: 200, y: 290)
            self.nameLabel.alpha = 1
            }, completion: nil)
        
    }
    
    func animateLabelsWithPhysics() {
        // This is a single line comment
        
        welcomeAppLabel.center = CGPoint(x: 100, y: 40)
        welcomeAppLabel.alpha = 0
        // { } { { } } "" "Paul" () ("Paul") [] ["Bob", "John", "Sue"]
        UIView.animateWithDuration(0.3, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 5.0, options:[], animations: { () -> Void in
            
            self.welcomeAppLabel.center = CGPoint(x: 100, y: 240)
            self.welcomeAppLabel.alpha = 1
            
            }, completion: nil)
        
        nameLabel.center = CGPoint(x: 200, y: 90)
        nameLabel.alpha = 0
        
        UIView.animateWithDuration(2.0, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: [], animations: { () -> Void in
            
            self.nameLabel.center = CGPoint(x: 200, y: 290)
            self.nameLabel.alpha = 1
            
            }, completion: nil)
        
    }
    
}


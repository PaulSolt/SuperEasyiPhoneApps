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
        
        // Add and create the labels
        addLabels()
        
        // Make labels invisible
        welcomeLabel.alpha = 0
        nameLabel.alpha = 0
    }
    
    // Actions
    @IBAction func buttonsPressed(sender: AnyObject) {
        print("button Pressed!")
        firstLabel.text = "You Pressed Me!"
        
//        animateLabels() // linear animation (boring)
        animateLabelsUsingPhysics()
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
    
    func animateLabelsUsingPhysics() {
        
        // Setup initial animation conditions (location, transparency, etc)
        welcomeLabel.center = CGPoint(x: 100, y: 40)
        welcomeLabel.alpha = 0.0 // [0, 1]
        
        // Set new positions and animate (implicit animation)
        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.0, options: [], animations: { () -> Void in
            
                self.welcomeLabel.center = CGPoint(x: 100, y: 240)
                self.welcomeLabel.alpha = 1.0 // fully opaque or visible

            }, completion: nil)
        
        
        // setup animation starting values
        nameLabel.center = CGPoint(x: 200, y: 90)
        nameLabel.alpha = 0.0 // invisible
        
        // Animate to new positions and values
        UIView.animateWithDuration(2.0, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 20.0, options: [], animations: { () -> Void in
                self.nameLabel.center = CGPoint(x: 200, y: 290)
                self.nameLabel.alpha = 1.0 // visible
            }, completion: nil)

            

        
    }
    
    
    
    
    
    
    
    
    
}


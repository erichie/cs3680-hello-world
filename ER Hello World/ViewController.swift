//
//  ViewController.swift
//  ER Hello World
//
//  Created by Edward Richards on 1/12/17.
//  Copyright © 2017 Edward Richards. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let name: String = "Edward"
    
    @IBOutlet var gameDescription: UITextView!
    @IBOutlet var showGameDescriptionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        gameDescription.isHidden = true
        
        // Two ways to print statements and variables to the console
        print("Hello \(name)")
        NSLog(name)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func showGameDescription(_sender: UIButton) {
        if gameDescription.isHidden {
            showGameDescriptionButton.setTitle("Hide Description", for: UIControlState.normal)
            gameDescription.isHidden = false
        }
        else {
            showGameDescriptionButton.setTitle("Show Description", for: UIControlState.normal)
            gameDescription.isHidden = true
        }
        
    }
}


//
//  ViewController.swift
//  Randomizer
//
//  Created by adi on 09.02.17.
//  Copyright © 2017 AmikhaielHacker. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var writeTwo: NSTextField!
    @IBOutlet weak var writeOne: NSTextField!
    @IBOutlet weak var result: NSTextField!
    @IBOutlet weak var random: NSButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        result.alphaValue = 0
        
    }
    @IBAction func randAction(_ sender: Any) {
        result.alphaValue = 1
        
        if writeOne.stringValue == "" || writeTwo.stringValue == "" {
            result.stringValue = "Missing Something."
        }
        
        let randomInt = arc4random_uniform(2)
        
        if randomInt == 1 {
            result.stringValue = "\(writeOne.stringValue)"
        }else{
            result.stringValue = "\(writeTwo.stringValue)"
        }

    }
    

}


















































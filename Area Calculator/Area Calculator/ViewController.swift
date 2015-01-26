//
//  ViewController.swift
//  Area Calculator
//
//  Created by Bhargav Nookala on 1/25/15.
//  Copyright (c) 2015 Bhargav Nookala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var widthTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        println("button pressed")
        
        view.endEditing(true)
        
        if let width = widthTextField.text.toInt() {
            if let height = heightTextField.text.toInt() {
                
                var area = width * height
                
                outputLabel.text = "\(area)"
            }
        }
    }
    
    

}


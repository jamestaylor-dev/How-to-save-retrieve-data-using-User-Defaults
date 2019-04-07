//
//  ViewController.swift
//  How to save & retrieve data using User Defaults
//
//  Created by James Rea Taylor on 07/04/2019.
//  Copyright © 2019 James Rea Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var nameField: UITextField!
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var numberField: UITextField!
    
    // Saves the input data from the text fields when the UIButton is pressed
    @IBAction func saveNumber(_ sender: UIButton) {
        UserDefaults.standard.set(numberField.text, forKey: "number")
        UserDefaults.standard.set(nameField.text, forKey: "name")
        
        if let name = nameField.text {
            nameLabel.text = name
        }
        
        if let number = numberField.text {
            numberLabel.text = number
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Retrieves the users data when the view loads
        let numberObject = UserDefaults.standard.object(forKey: "number")
        if let number = numberObject as? String {
            numberLabel.text = number
        }
        
        let nameObject = UserDefaults.standard.object(forKey: "name")
        if let name = nameObject as? String {
            nameLabel.text = name
        }
    }
}

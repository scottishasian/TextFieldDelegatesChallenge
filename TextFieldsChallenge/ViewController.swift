//
//  ViewController.swift
//  TextFieldsChallenge
//
//  Created by Kynan Song on 05/05/2018.
//  Copyright © 2018 Kynan Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var postCodeField: UITextField!
    @IBOutlet weak var cashField: UITextField!
    @IBOutlet weak var textField1: UITextField!
    
    @IBAction func textFieldToggle(_ sender: Any) {
        if !(sender as! UISwitch).isOn {
            self.textField1.isEnabled = false
            self.textField1.resignFirstResponder()
        } else {
            self.textField1.isEnabled = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textField1.delegate = self


    }

}


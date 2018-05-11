//
//  CashViewDelegate.swift
//  TextFieldsChallenge
//
//  Created by Kynan Song on 11/05/2018.
//  Copyright © 2018 Kynan Song. All rights reserved.
//

import Foundation
import UIKit

class CashViewDelegate: NSObject, UITextFieldDelegate {
    
    var cashFormat = 0.00
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        //from solution
        
        
        let oldText = textField.text! as NSString
        //Current text in text field.
        var newText = oldText.replacingCharacters(in: range, with: string)
        var newString = String(newText)
        
        let numbers = CharacterSet.decimalDigits
        var numberText = ""
        for c in (newString.unicodeScalars) {
            //String value represented as unicode.
            //Sets replacement of text.
            if numbers.contains(UnicodeScalar(c.value)!) {
                numberText.append("\(c)")
            }
        }
        
        if let numberOfPennies = Int(numberText) {
            //unwrapping
            newText = "£" + self.moneyStringFromInt(numberOfPennies) + "." + self.penniesStringFromInt(numberOfPennies)
        } else {
            newText = "£" + String(cashFormat)
        }
        
        textField.text = newText
        
        return false
    }
   
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text!.isEmpty {
            textField.text = "£" + String(cashFormat)
        }
    }
    
    func moneyStringFromInt(_ value: Int) -> String {
        return String(value / 100)
    }
    
    func penniesStringFromInt(_ value: Int) -> String {
        let pennies = value % 100
        var penniesString = String(pennies)
        
        if pennies < 10 {
            penniesString = "0" + penniesString
        }
        
        return penniesString
    }
    
}



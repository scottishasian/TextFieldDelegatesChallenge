//
//  PostCodeViewDelegate.swift
//  TextFieldsChallenge
//
//  Created by Kynan Song on 09/05/2018.
//  Copyright © 2018 Kynan Song. All rights reserved.
//

import Foundation
import UIKit

class PostCodeViewDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        guard let text = textField.text else {return true}
        
        let maxLength = text.utf16.count + string.utf16.count - range.length
        return maxLength <= 5
        
        //from stackoverflow research
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
}

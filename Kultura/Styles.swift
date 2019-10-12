//
//  Styles.swift
//  Kultura
//
//  Created by Cindy Gu on 2019-10-12.
//  Copyright © 2019 Kultura. All rights reserved.
//

import Foundation
import UIKit

class Styles {
    
    static func styleTextField(_ textfield:UITextField) {
        
        // Line below the textfields so no need to outline the textfield
        let textFieldLine = CALayer()
        
        // sets the size of the line -- height == 2 is good for this
        textFieldLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        
        // sets the text field line color to teal
        textFieldLine.backgroundColor = UIColor.init(red: 90/255, green: 200/255, blue: 250/255, alpha: 1).cgColor
        
        // Removes border
        textfield.borderStyle = .none
        
        // Add line to the text field so that we don't need to outline the textfield
        textfield.layer.addSublayer(textFieldLine)
        
    }
    
    // function for valid password
    // from Chris Ching
    static func isPasswordValid(_ password : String) -> Bool {
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
}

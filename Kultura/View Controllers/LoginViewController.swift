//
//  LoginViewController.swift
//  Kultura
//
//  Created by Cindy on 10/12/19.
//  Copyright © 2019 Kultura. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var inputEmail: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUp()
    }
    
    func setUp() {
        errorLabel.alpha = 0
        
        Styles.styleTextField(inputEmail)
        Styles.styleTextField(userPassword)
        
        loginButton.layer.cornerRadius = 20.0
    }
    

    func validateTextFields() -> String? {
        // check all fields + see if fields are valid
        
        // check if all fields are filled in
        if inputEmail.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || userPassword .text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""  {
            // means at least 1 field is empty return please fill in all fields
            return "Please fill in all fields."
        }
        
        // everything is fine so return nil
        return nil
    }
    
    
    @IBAction func loginTapped(_ sender: Any) {
        // validate text fields
        let checkError = validateTextFields()
        if checkError != nil {
            // means there's an error somewhere, print error message
            print_error(checkError!)
        }
        
        let email = inputEmail.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = userPassword.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // sign in person
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                self.print_error("Couldn't sign in")
            }
            else {
                self.goToFirstTab()
            }
        }
    }
    
    func print_error(_ message: String) {
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
    func goToFirstTab() {
        let firstTabController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.firstTabController)
        
        view.window?.rootViewController = firstTabController
        view.window?.makeKeyAndVisible()
    }

}

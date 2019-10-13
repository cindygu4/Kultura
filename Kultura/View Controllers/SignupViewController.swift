//
//  SignupViewController.swift
//  Kultura
//
//  Created by Cindy on 10/12/19.
//  Copyright © 2019 Kultura. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SignupViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var inputEmail: UITextField!
    
    @IBOutlet weak var inputPassword: UITextField!
    
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUp()
    }
    
    func setUp() {
        errorLabel.alpha = 0
        
        // color in bottom of text fields as lines
        Styles.styleTextField(firstName)
        Styles.styleTextField(lastName)
        Styles.styleTextField(inputEmail)
        Styles.styleTextField(inputPassword)
        
        signUpButton.layer.cornerRadius = 20.0
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func validateTextFields() -> String? {
        // check all fields + see if fields are valid
        
        // check if all fields are filled in
        if firstName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || lastName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || inputEmail.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || inputPassword .text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""  {
            // means at least 1 field is empty return please fill in all fields
            return "Please fill in all fields."
        }
        
        // check if password is secure
        let password = inputPassword.text!.trimmingCharacters(in: .whitespacesAndNewlines);
        
        if !Styles.isPasswordValid(password) {
            // password is not secure enough, return a message
            return "Error: Invalid password."
        }
        
        
        // everything is fine so return nil
        return nil
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        // when this sign up button is tapped, need to check if fields are valid
        let checkError = validateTextFields()
        
        if checkError != nil {
            // means there's an error somewhere, print error message
            print_error(checkError!)
        }
        else {
            let firstname = firstName.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let lastname = lastName.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let userEmail = inputEmail.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let userPassword = inputPassword.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            // create user and store their info into firebase
            Auth.auth().createUser(withEmail: userEmail, password: userPassword) {
                result, err in
                if err != nil {
                    self.print_error("Error: Cannot create user")
                }
                else {
                    let db = Firestore.firestore()
                    
                    db.collection("users").addDocument(data: ["firstName":firstname, "lastName":lastname, "uid":result!.user.uid]) {(error) in
                        
                        if error != nil {
                            self.print_error("Error saving user data")
                        }
                    }
                }
            }
            
            // send them to the first page of the tab control viewer
            self.goToFirstTab()
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

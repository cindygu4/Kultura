//
//  ThirdViewController.swift
//  Kultura
//
//  Created by Cindy on 10/12/19.
//  Copyright © 2019 Kultura. All rights reserved.
//

import SwiftUI
import UIKit
import FirebaseUI
import Firebase
import FirebaseAuth

class ThirdViewController : UIViewController {
    
    @IBOutlet weak var firstName: UILabel!
    
    @IBOutlet weak var lastName: UILabel!
    
    @IBOutlet weak var userEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.setUp()
    }
    
    func setUp() {
        let db = Firestore.firestore()
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let userRef = db.collection("users").document("uid")
        
    userRef.getDocument { (document, error) in
            if let document = document, document.exists {
                self.firstName.text? = document.get("firstName") as! String
                self.lastName.text? = document.get("lastName") as! String
                self.userEmail.text? = document.get("email") as! String
            } else {
                print("Document does not exist")
            }
        }
        
    }
    
    @IBAction func signOutClicked(_ sender: Any) {
        self.returnToSignIn()
    }
    
    func returnToSignIn() {
        let logInSignUpController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.loginSignUpController)
        
        view.window?.rootViewController = logInSignUpController
        view.window?.makeKeyAndVisible()
    }
}

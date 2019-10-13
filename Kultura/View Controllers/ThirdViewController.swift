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

class ThirdViewController : UITableViewController {
    
    @IBOutlet weak var firstName: UILabel!
    
    @IBOutlet weak var lastName: UILabel!
    
    @IBOutlet weak var userEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        setUp()
    }
    
    func setUp() {
        if Auth.auth()
        let db = Firestore.firestore()
        
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

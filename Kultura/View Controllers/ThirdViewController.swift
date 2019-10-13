//
//  ThirdViewController.swift
//  Kultura
//
//  Created by Cindy on 10/12/19.
//  Copyright © 2019 Kultura. All rights reserved.
//

import SwiftUI
import UIKit

class ThirdViewController : UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
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

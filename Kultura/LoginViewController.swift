//
//  LoginViewController.swift
//  Kultura
//
//  Created by Cindy on 10/12/19.
//  Copyright © 2019 Kultura. All rights reserved.
//

import SwiftUI
import UIKit
import FirebaseUI

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func loginTapped(_ sender: UIButton) {
        
        // get default auth ui object
        let authUI = FUIAuth.defaultAuthUI()
        
        guard authUI != nil else {
            // log error
            return
        }
        
        // set as delegate
        authUI?.delegate = self
        
        // get reference to auth ui view controller
        let authViewController = authUI!.authViewController()
        
        // show
        present(authViewController, animated: true, completion: nil)
        
    }
}



extension UIViewController: FUIAuthDelegate {
    public func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        // check for errors
        guard error == nil else {
            // log the error
            return
        }
        
        // AuthDataResult?.user.uid
        
        performSegue(withIdentifier: "goHome", sender: self)
    }
}

//
//  SignupViewController.swift
//  Kultura
//
//  Created by Cindy on 10/12/19.
//  Copyright © 2019 Kultura. All rights reserved.
//

import UIKit

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
    
    
    @IBAction func signUpTapped(_ sender: Any) {
    }
    
}

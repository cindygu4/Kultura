//
//  SecondViewController.swift
//  Kultura
//
//  Created by Cindy on 10/12/19.
//  Copyright © 2019 Kultura. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func asiaOrgs(_ sender: Any) {
        self.goToAsianOrgs()
    }
    
    func goToAsianOrgs() {
        let asianOrgsController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.asiaOrgViewController)
        
        view.window?.rootViewController = asianOrgsController
        view.window?.makeKeyAndVisible()
    }
    
    
    @IBAction func goToFirstTab(_ sender: Any) {
        self.toFirstTab()
    }
    
    func toFirstTab() {
        let firstTabController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.firstTabController)
        
        view.window?.rootViewController = firstTabController
        view.window?.makeKeyAndVisible()
    }
    
}

// MARK: - IBActions
extension SecondViewController {

    @IBAction func cancelToSecondViewController(_ segue: UIStoryboardSegue) {
     }
     
}


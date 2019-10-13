//
//  OrgSummaryViewController.swift
//  Kultura
//
//  Created by Cindy on 10/13/19.
//  Copyright © 2019 Cindy Gu. All rights reserved.
//

import UIKit

class OrgSummaryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backClicked(_ sender: Any) {
        self.goBackToAsianOrgs()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func goBackToAsianOrgs() {
        let asianOrgController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.asiaOrgViewController)
        
        view.window?.rootViewController = asianOrgController
        view.window?.makeKeyAndVisible()
    }

}

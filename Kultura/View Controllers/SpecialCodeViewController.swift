//
//  SpecialCodeViewController.swift
//  Kultura
//
//  Created by Cindy on 10/13/19.
//  Copyright © 2019 Cindy Gu. All rights reserved.
//

import UIKit

class SpecialCodeViewController: UIViewController {

    @IBOutlet weak var codeText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        codeText.text? = String(Int.random(in: 10000..<99999))
    }
    

    @IBAction func backClicked(_ sender: Any) {
        self.goToFirstTab()
    }
    
    func goToFirstTab() {
        let firstTabController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.firstTabController)
        
        view.window?.rootViewController = firstTabController
        view.window?.makeKeyAndVisible()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

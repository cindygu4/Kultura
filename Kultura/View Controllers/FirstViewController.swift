//
//  FirstViewController.swift
//  Kultura
//
//  Created by Cindy on 10/12/19.
//  Copyright © 2019 Kultura. All rights reserved.
//

import Foundation
import UIKit

struct Headline {
    var id : Int
    var title : String
    var text : String
    var image : String
    var code : Int
}

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func firstClicked(_ sender: Any) {
        self.goToCodePage()
    }
    
    @IBAction func secondClicked(_ sender: Any) {
        self.goToCodePage()
    }
    
    
    @IBAction func thirdClicked(_ sender: Any) {
        self.goToCodePage()
    }
    
    
    @IBAction func fourthClicked(_ sender: Any) {
        self.goToCodePage()
    }
    
    
    @IBAction func fifthClicked(_ sender: Any) {
        self.goToCodePage()
    }
    
    func goToCodePage() {
        let specialCode = storyboard?.instantiateViewController(identifier: Constants.Storyboard.specialCodeController)
        
        view.window?.rootViewController = specialCode
        view.window?.makeKeyAndVisible()
    }
}


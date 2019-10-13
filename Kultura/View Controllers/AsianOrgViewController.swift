//
//  AsianOrgViewController.swift
//  Kultura
//
//  Created by Cindy on 10/13/19.
//  Copyright © 2019 Cindy Gu. All rights reserved.
//

import UIKit

var asiaOrganizations = ["CSA", "ASA"]
//var asiaEvents = [["Dumpling making", "Chinese New Year"], ["Food sharing day"]]
var casaEvents = ["Dumpling making", "Chinese New Year Party"]
var casaDesc = ["Come make dumplings with us!", "Enjoy some yummy Chinese food as we celebrate the new year!"]
var casaWhens = ["5pm, October 29, 2019", "3pm, TBD in February"]
var asaEvents = ["Food sharing day"]
var asaDesc = ["Come share your culture's food with the rest of ASA"]
var asaWhens = ["7pm, December 12, 2019"]
var myIndex = 0

class AsianOrgViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
   
    func asianEventSummary() {
        let asianEventController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.eventSummaryController)
        
        view.window?.rootViewController = asianEventController
        view.window?.makeKeyAndVisible()
    }

    @IBAction func csaEvents(_ sender: Any) {
        self.asianEventSummary()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func goBackToLocations(_ sender: Any) {
        self.goToLocations()
    }
    
    func goToLocations() {
        let locationController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.locationTab)
        
        view.window?.rootViewController = locationController
        view.window?.makeKeyAndVisible()
    }
}

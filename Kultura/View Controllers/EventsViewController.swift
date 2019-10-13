//
//  EventsViewController.swift
//  Kultura
//
//  Created by Cindy on 10/13/19.
//  Copyright © 2019 Cindy Gu. All rights reserved.
//

import UIKit

class EventsViewController: UITableViewController {
    
    var asiaOrganizations = ["CSA", "ASA"]
    //var asiaEvents = [["Dumpling making", "Chinese New Year"], ["Food sharing day"]]
    var casaEvents = ["Dumpling making", "Chinese New Year Party"]
    var casaDesc = ["Come make dumplings with us!", "Enjoy some yummy Chinese food as we celebrate the new year!"]
    var casaWhens = ["5pm, October 29, 2019", "3pm, TBD in February"]
    var asaEvents = ["Food sharing day"]
    var asaDesc = ["Come share your culture's food with the rest of ASA"]
    var asaWhens = ["7pm, December 12, 2019"]
    var myIndex = 0
    
    
    // MARK: - Properties
    
    // MARK: - UITableViewDataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (myIndex == 0) {
            return casaEvents.count
        }
        else {
            return asaEvents.count
        }
    }

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath)

        if (myIndex == 0) {
            cell.textLabel?.text = casaEvents[indexPath.row]
        }
        else {
            cell.textLabel?.text = asaEvents[indexPath.row]

        }
      return cell
    }
  
//    @IBAction func cancelChoices(_ sender: Any) {
//        self.goToLocationsTab()
//    }
//
//    func goToLocationsTab() {
//        let locationsTab = storyboard?.instantiateViewController(identifier: Constants.Storyboard.locationTab)
//
//        view.window?.rootViewController = locationsTab
//        view.window?.makeKeyAndVisible()
//    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "EventsToDetailsSegue", sender: self)
    }
}

//
//  AsiaOrgsViewController.swift
//  Kultura
//
//  Created by Jasmine Wang on 10/12/19.
//  Copyright © 2019 Cindy Gu. All rights reserved.
//

import UIKit

import UIKit

var asiaOrganizations = ["CASA", "ASA"]
//var asiaEvents = [["Dumpling making", "Chinese New Year"], ["Food sharing day"]]
var casaEvents = ["Dumpling making", "Chinese New Year Party"]
var casaDesc = ["Come make dumplings with us!", "Enjoy some yummy Chinese food as we celebrate the new year!"]
var casaWhens = ["5pm, October 29, 2019", "3pm, TBD in February"]
var asaEvents = ["Food sharing day"]
var asaDesc = ["Come share your culture's food with the rest of ASA"]
var asaWhens = ["7pm, December 12, 2019"]
var myIndex = 0

class AsiaOrgsViewController: UITableViewController {
    
    
    // MARK: - Properties
    
    // MARK: - UITableViewDataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return asiaOrganizations.count
    }

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

      cell.textLabel?.text = asiaOrganizations[indexPath.row]
      return cell
    }
    
    @IBAction func backToAsia(_ segue: UIStoryboardSegue) {
    }
  
}



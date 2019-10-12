//
//  OrgsViewController.swift
//  Kultura
//
//  Created by Jasmine Wang on 10/12/19.
//  Copyright © 2019 Cindy Gu. All rights reserved.
//

import UIKit

class OrgsViewController: UITableViewController {
    
  // MARK: - Properties
    var orgs = SampleOrgs.generateOrgsData(region: "Asia")

  
}

// MARK: - UITableViewDataSource
extension OrgsViewController {

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return orgs.count
  }

  override func tableView(_ tableView: UITableView,
                          cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "OrganizationID", for: indexPath)

    let org = orgs[indexPath.row]
    cell.textLabel?.text = org.name
    return cell
  }
}


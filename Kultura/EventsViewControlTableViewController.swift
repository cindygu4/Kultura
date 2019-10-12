//
//  EventsViewControlTableViewController.swift
//  Kultura
//
//  Created by Jasmine Wang on 10/12/19.
//  Copyright © 2019 Cindy Gu. All rights reserved.
//

import UIKit

class EventsViewControlTableViewController: UITableViewController {
    

  // MARK: - Properties
    
    var events = SampleEvents.generateEventsData()

  
}

// MARK: - UITableViewDataSource
extension EventsViewControlTableViewController {

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return events.count
  }

  override func tableView(_ tableView: UITableView,
                          cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "EventIdentifier", for: indexPath)

    let event = events[indexPath.row]
    cell.textLabel?.text = event.name
    cell.detailTextLabel?.text = event.date
    return cell
  }
}

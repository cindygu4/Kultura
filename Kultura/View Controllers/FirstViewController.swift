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
}

class FirstViewController: UITableViewController {
    
    /*override func numberOfSections(in tableView: UITableView) -> Int {
        return 3;
    }*/
    
    var headlines = [Headline(id: 1, title: "Celebrasia", text: "Chinese Student Association", image: "Celebrate"),
                     Headline(id: 2, title: "Skate Night", text: "TASA", image: "IceSkate"),
                     Headline(id: 3, title: "Lunar Gala", text: "Asian American Student Association", image: "What"),
                     Headline(id: 4, title: "Taste of India", text: "Indian Student Association", image: "TasteOfIndia"),
                     Headline(id: 5, title: "Congee Night", text: "Chinese Student Association", image: "Congee")]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath)
        
        let headline = headlines[indexPath.row]
        cell.textLabel?.text = headline.title
        cell.detailTextLabel?.text = headline.text
        cell.imageView?.image = UIImage(named:headline.image)
        return cell
    }
    
}


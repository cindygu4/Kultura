//
//  SecondViewController.swift
//  Kultura
//
//  Created by Cindy on 10/12/19.
//  Copyright © 2019 Kultura. All rights reserved.
//

import UIKit
import MapKit

class SecondViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the map at Umich
        let location = CLLocationCoordinate2D(latitude: 42.2780,
        longitude: -83.7382)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "University of Michigan"
        annotation.subtitle = "Ann Arbor"
        mapView.addAnnotation(annotation)
    }
    
}

// MARK: - IBActions
extension SecondViewController {

    @IBAction func cancelToSecondViewController(_ segue: UIStoryboardSegue) {
     }
     
}


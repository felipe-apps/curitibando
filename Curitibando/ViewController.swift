//
//  ViewController.swift
//  Curitibando
//
//  Created by Felipe Ferreira on 30/05/23.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, UISearchResultsUpdating {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Maps"
        view.addSubview(mapView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setMapLocation()
    }
    
    func setMapLocation() {
        let initialLocation = CLLocationCoordinate2D(latitude: -25.432777498282327, longitude: -49.27585744094422)
        let region = MKCoordinateRegion(center: initialLocation, latitudinalMeters: 14000, longitudinalMeters: 14000)
        mapView.setRegion(region, animated: true)
    }
    
    func setPinLocation(with latitude: Double, with longitude: Double) {
        let pin = MKPointAnnotation()
        let coordinates = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        pin.coordinate = coordinates
        mapView.addAnnotation(pin)
        
        // Zoom into the selected location
        let region = MKCoordinateRegion(center: coordinates, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        return
    }
    
}

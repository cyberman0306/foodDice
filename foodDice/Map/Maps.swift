//
//  Maps.swift
//  foodDice
//
//  Created by cnu on 2023/02/22.
//
//
import Foundation
import NMapsMap
import CoreLocation

class MainViewController: UIViewController, CLLocationManagerDelegate {

    var locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        let mapView = NMFMapView(frame: view.frame)
        view.addSubview(mapView)
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            print("위치 서비스 On 상태")
            locationManager.startUpdatingLocation()
            print(locationManager.location?.coordinate)
        } else {
            print("위치 서비스 Off 상태")
        }

    }
}

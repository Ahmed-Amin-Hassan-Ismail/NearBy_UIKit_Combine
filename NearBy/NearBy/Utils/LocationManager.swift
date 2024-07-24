//
//  LocationManager.swift
//  NearBy
//
//  Created by Ahmed Amin on 24/07/2024.
//

import Foundation
import CoreLocation

final class LocationManager: NSObject {
    
    // MARK: - Signleton
    
    static var manager: LocationManager {
        
        return LocationManager()
    }
    
    private override init() {
        super.init()
    }
    
    // MARK: - Constants
    
    private let locationManager = CLLocationManager()
    private var latitude: CLLocationDegrees?
    private var longitude: CLLocationDegrees?
    
    // MARK: - Helper Methods
    
    func setupLocationManager() {
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let coordinate = locations.last?.coordinate
        latitude = coordinate?.latitude ?? 12.9139381
        longitude = coordinate?.longitude ?? 77.6374695
    }
}

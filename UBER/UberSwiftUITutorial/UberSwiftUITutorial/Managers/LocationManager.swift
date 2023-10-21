//
//  LocationManager.swift
//  UberSwiftUITutorial
//
//  Created by 정정욱 on 2023/10/20.
//

import CoreLocation

class LocationManager: NSObject,ObservableObject{
    private let locationManager = CLLocationManager()

    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization() // 사용자에게 현위치 권한 받고
        locationManager.startUpdatingLocation() // 위치 업데이트.  순서 지켜야함
    }
}
//MARK: - extensions
extension LocationManager: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else{return}
        locationManager.stopUpdatingLocation()
    }
}

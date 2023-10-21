//
//  UberMapViewRepresentable.swift
//  UberSwiftUITutorial
//
//  Created by 정정욱 on 2023/10/20.
//

import SwiftUI
import MapKit

//여기서는 mapView에 대한 설정을 진행하고, 현재 사용자 위치 표시와 사용자 추적 모드를 설정합니다.
struct UberMapViewRepresentable: UIViewRepresentable{
    let mapView = MKMapView()
    // makeUIView(context:) 메서드는 실제로 맵 뷰를 생성하고 초기 설정을 수행합니다.
    
    let locationManager = LocationManager() // 사용자에게 위치 권한 받고 컨트롤하는
    
    // this incharge to make our map view
    func makeUIView(context: Context) -> some UIView {
        mapView.delegate = context.coordinator
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        return mapView
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //
    }
    
    //새로운 인스턴스인 MapCoordinator를 생성하여 반환합니다. 이 코디네이터 객체는 맵 뷰의 delegate 역할을 수행하기 위해 사용됩니다.
    func makeCoordinator() -> MapCoordinator{
        return MapCoordinator(parent: self)
    }
    
}
//MARK: - Extension

/*
 이 클래스의 주된 역할은 맵 뷰의 delegate로 동작하여 사용자 위치가 업데이트될 때 지도 중심점과 확대/축소 정도 등을 조정하는 것입니다.
 따라서 해당 코드에서 주요 기능은 SwiftUI와 UIKit 사이에서 상호작용하기 위한 UIViewRepresentable 프로토콜 및 Delegate 패턴을 활용하여 SwiftUI에서 MapKit의 기능을 사용하는 것입니다.
 */
extension UberMapViewRepresentable{
    
    class MapCoordinator: NSObject,MKMapViewDelegate{
        let parent: UberMapViewRepresentable

        init(parent: UberMapViewRepresentable) {
            self.parent = parent
            super.init()
        }
        // 사용자의 위치가 업데이트될 때마다 호출됩니다.
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            let region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude), // 유저의 위도 경도 획득
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
            parent.mapView.setRegion(region, animated: true)
        }
    }
    
}

//
//  LocationMapViewModel.swift
//  DubDubGrub
//
//  Created by Sean Allen on 5/26/21.
//

import MapKit

final class LocationMapViewModel: ObservableObject {
    @Published var alertItem: AlertItem?
    @Published var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 37.331516,
            longitude: -121.891054
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.01,
            longitudeDelta: 0.01
        )
    )
    
    func getLocations(for locationManager: LocationManager) {
        CloudKitManager.getLocations { [self] result in
            DispatchQueue.main.async {
                switch result {
                    case .success(let locations):
                        locationManager.locations = locations
                    case .failure(_):
                    self.alertItem = AlertContext.unableToGetLocations
                }
            }
        }
    }
}

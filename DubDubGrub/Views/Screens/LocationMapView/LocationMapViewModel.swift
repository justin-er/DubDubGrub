//
//  LocationMapViewModel.swift
//  DubDubGrub
//
//  Created by Sean Allen on 5/26/21.
//

import MapKit

final class LocationMapViewModel: ObservableObject {
    @Published var alertItem: AlertItem?
    @Published var locations: [DDGLocation] = []
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
    
    func getLocations() {
        CloudKitManager.getLocations { [self] result in
            switch result {
                case .success(let locations):
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {[weak self] in
                    self?.locations = locations
                }
                case .failure(_):
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {[weak self] in
                    self?.alertItem = AlertContext.unableToGetLocations
                }
            }
        }
    }
}

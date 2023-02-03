//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Justin on 16.10.22.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 37.33,
            longitude: -121.89),
        span: MKCoordinateSpan(
            latitudeDelta: 0.01,
            longitudeDelta: 0.01))
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea(SafeAreaRegions.all, edges: .top)
            ZStack {
                VStack {
                    Color(.black)
                        .ignoresSafeArea(SafeAreaRegions.all, edges: .top)
                        .opacity(0.6)
                    .frame(height: 75)
                    Spacer()
                }

                VStack {
                    Image("ddg-map-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 60)
                        .shadow(radius: 10)
                    Spacer()
                }
            }
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}

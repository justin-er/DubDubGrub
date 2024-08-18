//
//  DubDubGrubApp.swift
//  DubDubGrub
//
//  Created by Amirreza Eghtedari on 20.11.21.
//

import SwiftUI

@main
struct DubDubGrubApp: App {
    let locationManager = LocationManager()
    
    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environmentObject(locationManager)
        }
    }
}

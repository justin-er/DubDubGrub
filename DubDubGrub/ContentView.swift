//
//  ContentView.swift
//  DubDubGrub
//
//  Created by Amirreza Eghtedari on 20.11.21.
//

import SwiftUI

struct ContentView: View {
    let locationManager = LocationManager()
    
    var body: some View {
        AppTabView()
            .environmentObject(locationManager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

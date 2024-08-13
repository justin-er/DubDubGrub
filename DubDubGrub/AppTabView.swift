//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by Amirreza Eghtedari on 21.11.21.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }

            LocationListView()
                .tabItem {
                    Label("Locations", systemImage: "building")
                        .environment(\.symbolVariants, .none)
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
            Text("Salam")
                .tabItem {
                    Label("Salam", systemImage: "map")
                }
        }
        .accentColor(.brandPrimary)
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}

//
//  TestView.swift
//  DubDubGrub
//
//  Created by Amirreza Eghtedari on 21.11.21.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        TabView {
            Text("Map!")
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            
            Text("Profile")
                .tabItem {
                    Label("Person", systemImage: "person")
                }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

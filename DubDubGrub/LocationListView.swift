//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Justin on 16.10.22.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { item in
                NavigationLink(value: item) {
                    LocationCell()
                }
            }
            .listStyle(.plain)
            .navigationDestination(for: Int.self, destination: { int in
                LocationDetailView()
            })
            .navigationTitle("Grub Spots")
        }
    }
}
 
struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}

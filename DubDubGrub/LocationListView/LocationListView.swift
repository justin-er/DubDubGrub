//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Justin on 16.10.22.
//

import SwiftUI

struct LocationListView: View {
    @State private var locations: [DDGLocation] = [DDGLocation.TestData.default]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(locations, id: \.recordID) { location in
                    NavigationLink {
                        LocationDetailView(location: location)
                    } label: {
                        LocationCell(location: location)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Grub Spots")
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}

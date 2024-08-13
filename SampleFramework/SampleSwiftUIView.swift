//
//  SampleSwiftUIView.swift
//  SampleFramework
//
//  Created by Amirreza Eghtedari on 3/31/22.
//

import SwiftUI
import os
struct SampleSwiftUIView: View {
    @State private var showDetails = false

        var body: some View {
            VStack(alignment: .leading) {
                Button("Show details") {
                    showDetails.toggle()
                }

                if showDetails {
                    Text("You should follow me on Twitter: @twostraws")
                        .font(.largeTitle)
                }
            }
        }
}

struct SampleSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SampleSwiftUIView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}

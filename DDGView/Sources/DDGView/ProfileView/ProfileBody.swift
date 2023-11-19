//
//  ProfileBody.swift
//  DubDubGrub
//
//  Created by Justin on 19.03.23.
//

import SwiftUI

struct ProfileBody: View {
    var body: some View {
        VStack() {
            HStack() {
                Text("Bio")
                Spacer(minLength: 8)
                Button {
                    print("Hey")
                } label: {
                    Label("Check out", image: "cloud.rain")
                        .labelStyle(.titleAndIcon)
                }
            }
        }
    }
}

struct ProfileBody_Previews: PreviewProvider {
    static var previews: some View {
        ProfileBody()
    }
}

//
//  JustinProfileView.swift
//  DubDubGrub
//
//  Created by Amirreza Eghtedari on 2/26/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ProfileHeaderView()

                Spacer()
            }
            .padding()
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}

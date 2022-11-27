//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Amirreza Eghtedari on 11/20/22.
//

import SwiftUI

struct LocationDetailView: View {
    var body: some View {
            VStack(spacing: 16) {
                Image("default-banner-asset")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 120)

                HStack {
                    Label("123 Main street", systemImage: "mappin.and.ellipse")
                        .font(.caption)
                        .foregroundColor(.secondary)

                    Spacer()
                }
                .padding([.horizontal])

                Text("This is a test description. This is a test description. This is a test description. This is a test description. This is a test description.")
                    .lineLimit(3)
                    .minimumScaleFactor(0.9)
                    .padding(.horizontal)

                ZStack {
                    Capsule()
                        .frame(height: 80)
                        .foregroundColor(Color(.secondarySystemBackground))

                    HStack(spacing: 20) {
                        Button {
                            //
                        } label: {
                            LocationActionButton(foregroundColor: .brandPrimary, imageSystemName: "location.fill")
                        }

                        Link(destination: URL(string: "...")!) {
                            LocationActionButton(foregroundColor: .brandPrimary, imageSystemName: "network")
                        }

                        Button {
                            //
                        } label: {
                            LocationActionButton(foregroundColor: .brandPrimary, imageSystemName: "phone.fill")
                        }

                        Button {
                            //
                        } label: {
                            LocationActionButton(foregroundColor: .brandPrimary, imageSystemName: "person.fill.checkmark")
                        }
                    }
                }
                .padding(.horizontal)

                Text("Who's Here?")
                    .bold()
                    .font(.title2)

                Spacer()
            }
            .navigationTitle("Location Name")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack() {
            LocationDetailView()
        }
    }
}

struct LocationActionButton: View {
    var foregroundColor: Color
    var imageSystemName: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(foregroundColor)
                .frame(width: 60)
            
            Image(systemName: imageSystemName)
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 22)
                .foregroundColor(.white)
        }
    }
}

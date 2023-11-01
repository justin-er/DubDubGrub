//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Amirreza Eghtedari on 11/20/22.
//

import SwiftUI

struct LocationDetailView: View {
    let location: DDGLocation
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
            VStack(spacing: 16) {
                ZStack {
                    VStack {
                        Color(.black)
                            .opacity(0.6)
                        .frame(height: 75)
                    }

                    VStack {
                        Image("ddg-map-logo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 60)
                            .shadow(radius: 10)
                    }
                }

                HStack {
                    Label(location.address, systemImage: "mappin.and.ellipse")
                        .font(.caption)
                        .foregroundColor(.secondary)

                    Spacer()
                }
                .padding([.horizontal])

                Text(location.description)
                    .lineLimit(3)
                    .minimumScaleFactor(0.9)
                    .padding(.horizontal)

                ZStack {
                    Capsule()
                        .frame(height: 80)
                        .foregroundColor(Color(.secondarySystemBackground))
                    
                        HStack(spacing: 10) {
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
                        .padding(.horizontal)
                    }
                .padding(.horizontal)

                Text("Who's Here?")
                    .bold()
                    .font(.title2)
                                
                LazyVGrid(columns: columns) {
                    ForEach(0..<8) { _ in
                        FirstNameAvatarView(firstName: "Alexander")
                    }
                }
            }
            .navigationTitle(location.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack() {
            LocationDetailView(location: DDGLocation.TestData.default)
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

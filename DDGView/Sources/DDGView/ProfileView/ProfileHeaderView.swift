//
//  ProfileHeaderView.swift
//  DubDubGrub
//
//  Created by Amirreza Eghtedari on 2/26/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 8) {
            ProfileImageView()
            ProfileTitleView()
            Spacer()
        }
        .padding()
        .background {
            Color(.secondarySystemBackground)
        }
        .cornerRadius(10)
    }
}

struct ProfileImageView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Button {
                print("Edit called")
            } label: {
    
                AvatarView(size: 84)
            }
            
            Image(systemName: "square.and.pencil.circle.fill")
                .resizable()
                .foregroundColor(.brandPrimary)
                .frame(width: 24, height: 24)
                .alignmentGuide(VerticalAlignment.bottom) { dimension in
                    dimension[.bottom] + 5
                }
        }
    }
}

struct ProfileTitleView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var company = ""
    @State private var bio = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            VStack(spacing: 0) {
                TextField("First name", text: $firstName)
                    .font(.title)
                    .bold()
                    .lineLimit(2)
                .layoutPriority(1)
                
                TextField("Last name", text: $lastName)
                    .font(.title)
                    .bold()
                    .lineLimit(2)
                    .layoutPriority(1)
            }
            
            TextField("Company", text: $company)
                .font(.callout)
                .lineLimit(1)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
            .previewLayout(.fixed(width: 375, height: 235))
    }
}

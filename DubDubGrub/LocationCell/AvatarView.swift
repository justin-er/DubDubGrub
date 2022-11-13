//
//  AvatarView.swift
//  DubDubGrub
//
//  Created by Justin on 06.11.22.
//

import SwiftUI

struct AvatarView: View {
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: 35 )
            .clipShape(Circle())
    }
}


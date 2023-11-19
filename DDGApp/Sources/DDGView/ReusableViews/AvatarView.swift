//
//  AvatarView.swift
//  DubDubGrub
//
//  Created by Justin on 06.11.22.
//

import SwiftUI

struct AvatarView: View {
    let size: CGFloat
    
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: size)
            .clipShape(Circle())
    }
}


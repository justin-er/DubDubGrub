//
//  FirstNameAvatarView.swift
//  DubDubGrub
//
//  Created by Amirreza Eghtedari on 12/4/22.
//

import SwiftUI

struct FirstNameAvatarView: View {
    let firstName: String
    
    var body: some View {
        VStack {
            AvatarView(size: 64)
            Text(firstName)
                .bold()
                .minimumScaleFactor(0.75)
        }
    }
}

struct FirstNameAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        FirstNameAvatarView(firstName: "Justin")
    }
}

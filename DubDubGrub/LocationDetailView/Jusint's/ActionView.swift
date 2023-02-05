//
//  ActionView.swift
//  DubDubGrub
//
//  Created by Amirreza Eghtedari on 11/20/22.
//

import SwiftUI

struct ActionView: View {
    var body: some View {
        HStack {
            Button("Silam") {
                //
            }
            .frame(width: 50, height: 50)
            .clipShape(Circle())
        }
    }
}

struct ActionView_Previews: PreviewProvider {
    static var previews: some View {
        ActionView()
    }
}

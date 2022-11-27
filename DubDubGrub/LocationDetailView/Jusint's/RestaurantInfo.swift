//
//  RestaurantInfo.swift
//  DubDubGrub
//
//  Created by Amirreza Eghtedari on 11/13/22.
//

import SwiftUI

struct RestaurantInfo: View {
    var body: some View {
        VStack {
            Image("default-square-asset")
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .clipped()
            HStack {
                Spacer()
                    .frame(width: 8)
                Image(systemName: "mappin.and.ellipse")
                Text("1 S Market St Ste 40")
                Spacer()
            }
            Spacer()
        }
        
    }
}

struct RestaurantInfo_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantInfo()
            .previewLayout(.fixed(width: 600, height: 250))
    }
}

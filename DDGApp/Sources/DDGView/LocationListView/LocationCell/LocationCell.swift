//
//  LocationCell.swift
//  DubDubGrub
//
//  Created by Justin on 16.10.22.
//

import DDGBusiness
import SwiftUI

struct LocationCell: View {
    let location: DDGLocation
    
    var body: some View {
        HStack(spacing: 8) {
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                
                HStack{
                    ForEach(1..<4) { _ in
                        AvatarView(size: 35)
                    }
                }
            }
            .padding([.leading], 8)
            
            Spacer()
        }
        .padding(8)
    }
}

struct LocationCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationCell(location: DDGLocation.TestData.default)
            .previewLayout(.fixed(width: 450, height: 220))
    }
}

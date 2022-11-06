//
//  LocationCell.swift
//  DubDubGrub
//
//  Created by Justin on 16.10.22.
//

import SwiftUI

struct LocationCell: View {
    var body: some View {
        HStack {
            Image("default-avatar")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .clipShape(Circle())
                .padding([.leading], 16)
            
            VStack {
                HStack {
                    Text("AC Kitchen and Lounge")
                        .font(.title2)
                    
                    Spacer()
                }
                
                HStack {
                    ForEach(1..<4) { _ in
                        Image("default-avatar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                            .clipShape(Circle())
                    }
                    
                    Spacer()
                }
            }
            
            Spacer()
            
        }
    }
}

struct LocationCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationCell()
            .previewLayout(.fixed(width: 300, height: 70))
    }
}

//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 吴伟华 on 2023/11/28.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview {
    
    Group {
        LandmarkRow(landmark: landmarks[0])
    }
    .previewLayout(.fixed(width: 300, height: 70))
    
   
}

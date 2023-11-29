//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 吴伟华 on 2023/11/28.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationStack{
            List(landmarks){ landmark in
                
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .navigationTitle("地标")
        }
        


    }
}

#Preview {
    LandmarkList()
}

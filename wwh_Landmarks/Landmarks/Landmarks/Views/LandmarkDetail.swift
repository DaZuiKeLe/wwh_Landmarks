//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 吴伟华 on 2023/11/28.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {
    
    var landmark:Landmark
    
    var body: some View {
        VStack{
            MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
                .ignoresSafeArea(edges:.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom,-130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)

                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}

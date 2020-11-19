//
//  LandmarkList.swift
//  SwiftUIExample
//
//  Created by haoshuai on 2020/11/19.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        
        NavigationView {

            // ,id: \.id Identifiable
            List(landmarkData) { item in
                    
                NavigationLink(destination: LandmarkDetail(landmark: item)) {
                    LandmarkRow(landmark: item)
                }

            }
            .navigationBarTitle(Text("Landmarks"))
        }
        
    }
}

// 演示不同设备测试
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

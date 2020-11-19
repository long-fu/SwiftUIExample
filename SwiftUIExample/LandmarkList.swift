//
//  LandmarkList.swift
//  SwiftUIExample
//
//  Created by haoshuai on 2020/11/19.
//

import SwiftUI

struct LandmarkList: View {
    
    @State var showFavoritesOnly = true
    
    var body: some View {
        
        NavigationView {

            VStack {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites only")
                })
                .frame(height: 44)
                .padding()
                
                List {

                    ForEach(landmarkData) { item in
                        if !self.showFavoritesOnly || item.isFavorite {
                            NavigationLink(destination: LandmarkDetail(landmark: item)) {
                                LandmarkRow(landmark: item)
                            }
                        }
                    }
                }
            }
            // ,id: \.id Identifiable


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

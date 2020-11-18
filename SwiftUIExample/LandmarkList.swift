//
//  LandmarkList.swift
//  SwiftUIExample
//
//  Created by haoshuai on 2020/11/19.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // ,id: \.id Identifiable
        List(landmarkData) { item in
            LandmarkRow(landmark: item)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}

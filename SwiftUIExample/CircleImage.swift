//
//  CircleImage.swift
//  SwiftUIExample
//
//  Created by haoshuai on 2020/11/18.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        
        Image("head")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 4))
            .shadow(radius: 10)

    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

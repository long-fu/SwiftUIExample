//
//  UserData.swift
//  SwiftUIExample
//
//  Created by haoshuai on 2020/11/19.
//

import Foundation
import Combine

/// ObservableObject 可观察的对象
final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}

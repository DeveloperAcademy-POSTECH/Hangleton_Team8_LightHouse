//
//  Gesture.swift
//  VoiceOver Dictionary
//
//  Created by 이가은 on 2022/10/09.
//

import Foundation

struct Gesture: Hashable {
    let mainCategory: MainCategory
    let title: String
    let subTitle: String
    let content: String
    let imageName: String
    
    enum MainCategory: String, CaseIterable {
        case requiredFeatures = "필수 기능"
        case convenienceFeatures = "편의 기능"
        // 추가
    }
}

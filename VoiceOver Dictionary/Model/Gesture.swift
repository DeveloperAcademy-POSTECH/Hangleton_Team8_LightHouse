//
//  Gesture.swift
//  VoiceOver Dictionary
//
//  Created by 이가은 on 2022/10/09.
//

import Foundation

struct Gesture: Hashable {
    let mainCategory: Constants.MainCategory
    let title: String
    let subTitle: String
    let content: String
    let imageName: String
}

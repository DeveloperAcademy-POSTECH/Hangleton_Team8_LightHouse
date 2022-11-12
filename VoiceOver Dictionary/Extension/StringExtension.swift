//
//  StringExtension.swift
//  VoiceOver Dictionary
//
//  Created by Ruyha on 2022/10/12.
//

import Foundation

// MARK: 로컬라이징을 위한 익스텐션

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: "Localizable", value: self, comment: "")
    }
}


/* MARK: StringExtension 사용법
 기존       : var testTxt = NSLocalizedString("테스트문구입니다.",comment: "")
 
 extension : var testTxt = "테스트 문구입니다."localizable
 
 extension 을 통해 사용하면 위의 설명 처럼 쉽게 사용이 가능합니다.
 출처: https://zeddios.tistory.com/368
 */

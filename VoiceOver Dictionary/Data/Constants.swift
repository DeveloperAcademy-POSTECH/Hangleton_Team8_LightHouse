//
//  GestureConstance.swift
//  VoiceOver Dictionary
//
//  Created by 이가은 on 2022/10/09.
//

import Foundation

struct Constants {
    
    enum MainCategory: String, CaseIterable {
        case requiredFeatures = "필수 기능"
        case convenienceFeatures = "편의 기능"
        // 추가
    }
    
    static let GestureArray = [
        Gesture(mainCategory: .convenienceFeatures, title: "보이스오버를 시작하기", subTitle: "보이스오버를 켜거나 끄는 방법", content: "1번, 시리를 호출한 후 “보이스 오버 켜줘”라고 말할 시 보이스 오버 기능을 사용하실 수 있습니다. 다시 끄고 싶은 경우에는 시리를 호출한 후 “보이스 오버 꺼줘”라고 말해보세요.\n2번, 설정 앱에서 “손쉬운 사용”으로 이동 후 보이스오버 화면으로 이동하면, 보이스오버를 켜고 끌 수 있습니다.\n3번, 설정 앱에서 “손쉬운 사용”으로 이동 후 “손쉬운 사용 단축키”에서 보이스오버를 단축키로 설정할 수 있습니다. 설정 후에 홈버튼이 없는 기종의 경우 전원 버튼을 삼중 클릭하면 보이스오버를 끄고 킬 수 있습니다. 홈버튼이 있는 기종의 경우에는 홈 버튼을 삼중 클릭하세요.", imageName: "startVoiceOver"),
        Gesture(mainCategory: .convenienceFeatures, title: "세 손가락으로 삼중 탭", subTitle: "화면 커튼 토글", content: "화면 커튼이 켜져 있으면 화면을 완전히 어둡게 만들어줍니다. 다른 사람에게는 화면이 꺼져 보이지만, 기기 및 VoiceOver 탐색이 활성 상태로 유지됩니다. 개인정보 보호 기능을 강화 시 키기기 위해서 해당 기능을 사용하실 수 있습니다./n한 번 더 세 손가락으로 삼중 탭 할 경우 화면 커튼 기능이 꺼집니다./n손쉬운 사용의 확대/축소가 활성화되어 있으면 세 손가락으로 사중 탭 하기 제스처를 통해 해당 기능을 이용할 수 있습니다.", imageName: "ThreeFingerTripleTap"),
        Gesture(mainCategory: .requiredFeatures, title: "홈으로 이동하기 ", subTitle: "홈으로 이동하기 위한 방법", content: "1홈버튼이 없는 기종일 경우 알림음이 2번 울릴 때까지 화면 하단 가장자리에서 위의 방향으로 쓸어 올리세요. 홈버튼이 있는 기종의 경우에는 홈 버튼을 한번 클릭하세요.", imageName: "goToHome"),
        Gesture(mainCategory: .requiredFeatures, title: "앱 전환기", subTitle: "앱 전환기를 실행하기 위한 방법", content: "홈버튼이 없는 기종일 경우 알림음이 3번 울릴 때까지 화면 하단 가장자리에서 위의 방향으로 길게 쓸어 올리세요. 홈버튼이 있는 기종일 경우 홈 버튼을 두 번 클릭하세요.\n\n앱 전횐기에 있는 앱을 삭제하고 싶은 경우 해당 앱을 선택하고 세 손가락을 위로 드래그하세요.", imageName: "appSwitch")
    ]
}

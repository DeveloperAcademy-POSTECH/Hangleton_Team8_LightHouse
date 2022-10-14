//
//  GestureConstance.swift
//  VoiceOver Dictionary
//
//  Created by 이가은 on 2022/10/09.
//

import Foundation

struct Constants {
    
    enum MainCategory: String, CaseIterable {
        case requiredFeatures = "Lz_Setting"
        case convenienceFeatures = "LZ_convenienceFeatures"
        // tab
        case tabOneFinger = "LZ_tabOneFinger"
        case tabTwoFingers = "LZ_tabTwoFingers"
        case tabThreeFingers = "LZ_tabThreeFingers"
        case tabFourFingers = "LZ_tabFourFingers"
        // swipe
        case swipeOneFinger = "LZ_swipeOneFinger"
        case swipeTwoFingers = "LZ_swipeTwoFingers"
        case swipeThreeFingers = "LZ_swipeThreeFingers"
        case swipeFourFingers = "LZ_swipeFourFingers"
        // rotate
        case rotate = "LZ_rotate"
        // scrub
        case scrub = "LZ_scrub"
        // tab & hold two fingers
        case tabAndHoldTwoFingers = "LZ_tabAndHoldTwoFingers"
        // double tab, hold, & flick
        case doubleTabHoldAndFlickThreeFingers = "LZ_doubleTabHoldAndFlickThreeFingers"
        // Back tab
        case backTab = "LZ_backTab"
    }
    
    static let GestureArray = [
        // 필수기능
        Gesture(mainCategory:.requiredFeatures,
                title:"LZ_Title_StartVoiceOver".localized,
                subTitle:"LZ_SubTitle_StartVoiceOver".localized,
                content:"총 세 가지 방법이 있습니다.\n\n첫 번째로, 시리를 호출한 후 “보이스오버 켜줘”라고 말할 시 VoiceOver 기능을 사용하실 수 있습니다. 다시 끄고 싶은 경우에는 시리를 호출한 후 “보이스오버 꺼줘”라고 말해보세요. \n\n두 번째로, 설정 앱에서 “손쉬운 사용”으로 이동 후 VoiceOver 화면으로 이동하면, VoiceOver를 켜고 끌 수 있습니다. \n\n마지막으로, 설정 앱에서 “손쉬운 사용”으로 이동 후 “손쉬운 사용 단축키”에서 VoiceOver를 단축키로 설정할 수 있습니다. 설정 후에 홈버튼이 없는 기종의 경우 전원 버튼을 삼중 클릭하면 VoiceOver를 끄고 킬 수 있습니다. 홈버튼이 있는 기종의 경우에는 홈 버튼을 삼중 클릭하세요.",
                imageName:"startVoiceOver"),
        
        Gesture(mainCategory:.requiredFeatures,
                title:"LZ_Title_ThreeFingerTripleTap".localized,
                subTitle:"LZ_SubTitle_ThreeFingerTripleTap".localized,
                content:"화면 커튼이 켜져 있으면 화면을 완전히 어둡게 만들어줍니다. 다른 사람에게는 화면이 꺼져 보이지만, 기기 및 VoiceOver 탐색이 활성 상태로 유지됩니다. 개인정보 보호 기능을 강화 시 키기기 위해서 해당 기능을 사용하실 수 있습니다. \n\n한 번 더 세 손가락으로 삼중 탭 할 경우 화면 커튼 기능이 꺼집니다. \n\n손쉬운 사용의 확대/축소가 활성화되어 있으면 세 손가락으로 사중 탭 하기 제스처를 통해 해당 기능을 이용할 수 있습니다.",
                imageName:"threeFingerTripleTap"),
        
        Gesture(mainCategory:.requiredFeatures,
                title:"LZ_Title_TwoFingerScrub".localized,
                subTitle:"LZ_SubTitle_TwoFingerScrub".localized,
                content:"이전 화면으로 이동하거나 화면을 닫습니다. 두 손가락을 Z모양으로 드래그하면 해당 화면의 이전 화면으로 이동하거나 제어센터, 알림센터, 앱 전환기, 앱폴더 등 닫기 버튼이 따로 없는 화면을 닫습니다. 키보드가 열려 있을 경우에는 키보드를 접을 수 있습니다.",
                imageName:"twoFingerScrub"),
        
        Gesture(mainCategory:.requiredFeatures,
                title:"LZ_Title_RotorClounterClockwise".localized,
                subTitle:"LZ_SubTitle_RotorClounterClockwise".localized,
                content:"로터를 사용하여 음량, 말하기 속도, 음높이 변경 또는 발음 기호 사용, 에코 입력 및 구두점 읽기와 같은 설정을 조절할 수 있습니다.\n\n화면에 두 손가락을 올려놓은 채로 두 손가락을 시계 또는 반시계 방향으로 회전시켜서 사용이 가능합니다. 양손을 사용하는 경우에는 한 손가락은 고정해두고 나머지 한 손가락을 시계 또는 반시계 방향으로 드래그하세요.",
                imageName:"rotorClounterClockwise"),
        
        //편의기능
        Gesture(mainCategory:.convenienceFeatures,
                title:"LZ_Title_MoveToHome".localized,
                subTitle:"LZ_SubTitle_MoveToHome".localized,
                content:"홈버튼이 없는 기종일 경우 알림음이 2번 울릴 때까지 화면 하단 가장자리에서 위의 방향으로 쓸어 올리세요. \n\n홈버튼이 있는 기종의 경우에는 홈 버튼을 한번 클릭하세요.",
                imageName:"moveToHome"),
        
        Gesture(mainCategory:.convenienceFeatures,
                title:"LZ_Title_AppSwitcher".localized,
                subTitle:"LZ_SubTitle_AppSwitcher".localized,
                content:"홈버튼이 없는 기종일 경우 알림음이 3번 울릴 때까지 화면 하단 가장자리에서 위의 방향으로 길게 쓸어 올리세요. \n\n홈버튼이 있는 기종일 경우 홈 버튼을 두 번 클릭하세요. \n\n앱 전환기에 있는 앱을 삭제하고 싶은 경우 해당 앱을 선택하고 세 손가락을 위로 드래그하세요.",
                imageName:"appSwitcher"),
        
        Gesture(mainCategory:.convenienceFeatures,
                title:"LZ_Title_ControlCenter".localized,
                subTitle:"LZ_SubTitle_ControlCenter".localized,
                content:"시간, 배터리 등 상태 아이콘이 표시되어 있는 최상단의 상태 막대를 탭한 후 세 손가락을 위쪽 방향으로 쓸어 올리세요. \n\n제어센터를 닫으려면 두 손가락으로 문지르기를 하시면 됩니다.",
                imageName:"controlCenter"),
        
        Gesture(mainCategory:.convenienceFeatures,
                title:"LZ_Title_NotificationCenter".localized,
                subTitle:"LZ_SubTitle_NotificationCenter".localized,
                content:"시간 및 베터리가 표시되어 있는 최상단의 상태 막대를 탭한 후 세 손가락을 아래쪽 방향으로 쓸어 내리세요. \n\n알림센터를 닫으려면 두 손가락으로 문지르기를 하시면 됩니다.",
                imageName:"notificationCenter"),
        
        // 탭: 한 손가락
        Gesture(mainCategory:.tabOneFinger,
                title:"LZ_Title_OneFingerSingleTap".localized,
                subTitle:"LZ_SubTitle_OneFingerSingleTap".localized,
                content:"터치한 대상을 알려줍니다.",
                imageName:"oneFingerSingleTap"),
        
        Gesture(mainCategory:.tabOneFinger,
                title:"LZ_Title_OneFingerDoubleTap".localized,
                subTitle:"LZ_SubTitle_OneFingerDoubleTap".localized,
                content:"선택된 대상을 동작시킵니다. VoiceOver가 꺼져있는 상태에서의 클릭과 비슷한 역할을 수행합니다. \n\n예를 들어 토글이 선택되어 있다면 토글을 켜거나 끄며, 버튼이 선택되어 있다면 버튼을 실행합니다. \n\n대상을 실행시키는 기본 동작입니다.",
                imageName:"oneFingerDoubleTap"),
        
        Gesture(mainCategory:.tabOneFinger,
                title:"LZ_Title_OneFingerTripleTap".localized,
                subTitle:"LZ_SubTitle_OneFingerTripleTap".localized,
                content:"빠른 메뉴를 실행시킵니다. 앱 편집 등에 활용 가능합니다. \n\n빠른 메뉴 화면을 닫으려면 두 손가락으로 문지르기를 하시면 됩니다.",
                imageName:"oneFingerTripleTap"),
        
        Gesture(mainCategory:.tabOneFinger,
                title:"LZ_Title_OneFingerQuadrupleTap".localized,
                subTitle:"LZ_SubTitle_OneFingerQuadrupleTap".localized,
                content:"보조 활성화를 지원하지 않는 대상이라면 한 손가락으로 이중 탭을 두 번 실행한 것으로 인식합니다. \n\n(보조 활성화가 사용된 예시는 아직 찾지 못했습니다.)",
                imageName:"oneFingerQuadrupleTap"),
        
        // 탭: 두 손가락
        Gesture(mainCategory:.tabTwoFingers,
                title:"LZ_Title_TwoFingerSingleTap".localized,
                subTitle:"LZ_SubTitle_TwoFingerSingleTap".localized,
                content:"VoiceOver가 말하는 도중에 두 손가락으로 화면을 터치하면 말을 끊고 멈춥니다. 한 번 더 두 손가락으로 한번 탭 할 경우 멈춘 부분부터 다시 재생합니다.",
                imageName:"twoFingerSingleTap"),
        
        Gesture(mainCategory:.tabTwoFingers,
                title:"LZ_Title_TwoFingerDoubleTap".localized,
                subTitle:"LZ_SubTitle_TwoFingerDoubleTap".localized,
                content:"음악이나 영상 등 재생 중인 미디어가 중지됩니다. 한 번 더 두 손가락으로 이중 탭 할 경우 멈춰진 부분부터 다시 재생됩니다. 텍스트의 경우에는 말을 끊고 멈춥니다. \n\n텍스트를 입력 할 때 두 손가락으로 이중 탭을 하면 사용자의 음성을 인식하여 음성을 텍스트로 전환하여 입력합니다.",
                imageName:"twoFingerDoubleTap"),
        
        Gesture(mainCategory:.tabTwoFingers,
                title:"LZ_Title_TwoFingerTripleTap".localized,
                subTitle:"LZ_SubTitle_TwoFingerTripleTap".localized,
                content:"현재 화면에 있는 항목들이 한글일 경우 가나다순으로, 영어일 경우 알파벳순으로 리스트 형태로 정렬되어 표시됩니다. \n\n두 손가락으로 문지르기를 하면 항목 선택 화면이 해제됩니다.",
                imageName:"twoFingerTripleTap"),
        
        Gesture(mainCategory:.tabTwoFingers,
                title:"LZ_Title_TwoFingerQuadrupleTap".localized,
                subTitle:"LZ_SubTitle_TwoFingerQuadrupleTap".localized,
                content:"VoiceOver에 대한 빠른 설정 화면이 열립니다. \n\n두 손가락으로 문지르기를 하면 빠른 설정 화면이 해제 됩니다.",
                imageName:"twoFingerQuadrupleTap"),
        
        // 탭: 세 손가락
        Gesture(mainCategory:.tabThreeFingers,
                title:"LZ_Title_ThreeFingerSingleTap".localized,
                subTitle:"LZ_SubTitle_ThreeFingerSingleTap".localized,
                content:"현재 화면에서 선택되어 있는 항목에 대한 정보를 요약해서 설명해 줍니다.",
                imageName:"threeFingerSingleTap"),
        
        Gesture(mainCategory:.tabThreeFingers,
                title:"LZ_Title_ThreeFingerDoubleTap".localized,
                subTitle:"LZ_SubTitle_ThreeFingerDoubleTap".localized,
                content:"VoiceOver의 말하기 기능이 꺼집니다. \n\n한 번 더 세 손가락으로 이중 탭을 하면 말하기 기능이 다시 켜집니다.",
                imageName:"threeFingerDoubleTap"),
        
        Gesture(mainCategory:.tabThreeFingers,
                title:"LZ_Title_ThreeFingerTripleTap".localized,
                subTitle:"LZ_SubTitle_ThreeFingerTripleTap".localized,
                content:"화면 커튼 기능이 켜서 화면을 완전히 어둡게 만들어줍니다. 다른 사람에게는 화면이 꺼져 보이지만, 기기 및 VoiceOver 탐색이 활성 상태로 유지됩니다. 개인정보 보호 기능을 강화 시 키기기 위해서 해당 기능을 사용하실 수 있습니다. \n\n한 번 더 세 손가락으로 삼중 탭하면 화면 커튼 기능이 꺼집니다. \n\n손쉬운 사용의 확대/축소가 활성화되어 있으면 세 손가락으로 사중 탭하여 통해 해당 기능을 이용할 수 있습니다.",
                imageName:"threeFingerTripleTap"),
        
        Gesture(mainCategory:.tabThreeFingers,
                title:"LZ_Title_ThreeFingerQuadrupleTap".localized,
                subTitle:"LZ_SubTitle_ThreeFingerQuadrupleTap".localized,
                content:"현재 항목의 말하기 내용을 클립보드로 복사됩니다. 손쉬운 사용의 확대/축소가 활성화되어 있으면 세 손가락으로 오중 탭하여 통해 해당 기능을 이용할 수 있습니다.",
                imageName:"threeFingerQuadrupleTap"),
        
        // 탭: 네 손가락
        Gesture(mainCategory:.tabFourFingers,
                title:"LZ_Title_FourFingerSingleTap".localized,
                subTitle:"LZ_SubTitle_FourFingerSingleTap".localized,
                content:"현재 화면에서 VoiceOver가 접근 가능한 제일 위의 항목을 선택합니다. 한 번 더 네 손가락으로 한 번 탭하면 접근 가능한 제일 마지막 항목을 선택합니다.",
                imageName:"fourFingerSingleTap"),
        
        Gesture(mainCategory:.tabFourFingers,
                title:"LZ_Title_FourFingerDoubleTap".localized,
                subTitle:"LZ_SubTitle_FourFingerDoubleTap".localized,
                content:"VoiceOver 연습을 실행할 수 있습니다. \n\n한 번 더 네 손가락으로 이중 탭하면 VoiceOver 연습을 종료합니다.",
                imageName:"fourFingerDoubleTap"),
        
        Gesture(mainCategory:.tabFourFingers,
                title:"LZ_Title_FourFingerTripleTap".localized,
                subTitle:"LZ_SubTitle_FourFingerTripleTap".localized,
                content:"주변 탐색을 하는 데 도움을 주는 확대기의 감지 모드 기능을 사용하실 수 있습니다. \n\n다만, iOS 16 이상의 라이더 센서가 있는 iPhone 12 이상 Pro 기종에서만 감지 모드의 전체 기능을 사용할 수 있습니다.",
                imageName:"fourFingerTripleTap"),
        
        Gesture(mainCategory:.tabFourFingers,
                title:"LZ_Title_FourFingerQuadrupleTap".localized,
                subTitle:"LZ_SubTitle_FourFingerQuadrupleTap".localized,
                content:"(없음)",
                imageName:"fourFingerQuadrupleTap"),
        
        // 쓸어넘기기: 한 손가락
        Gesture(mainCategory:.swipeOneFinger,
                title:"LZ_Title_OneFingerSwipeLeft".localized,
                subTitle:"LZ_SubTitle_OneFingerSwipeLeft".localized,
                content:"이전 항목을 선택합니다. 빠르게 쓸어 넘겨야 한 손가락으로 탭 후 드래그로 인식하지 않습니다.",
                imageName:"oneFingerSwipeLeft"),
        
        Gesture(mainCategory:.swipeOneFinger,
                title:"LZ_Title_OneFingerSwipeRight".localized,
                subTitle:"LZ_SubTitle_OneFingerSwipeRight".localized,
                content:"다음 항목을 선택합니다. 빠르게 쓸어 넘겨야 한 손가락으로 탭 후 드래그로 인식하지 않습니다.",
                imageName:"oneFingerSwipeRight"),
        
        Gesture(mainCategory:.swipeOneFinger,
                title:"LZ_Title_OneFingerSwipeUp".localized,
                subTitle:"LZ_SubTitle_OneFingerSwipeUp".localized,
                content:"현재 선택되어 있는 로터의 이전 항목을 실행합니다. 로터가 활성화 된 후 빠르게 쓸어 올려야 인식이 잘 됩니다.",
                imageName:"oneFingerSwipeUp"),
        
        Gesture(mainCategory:.swipeOneFinger,
                title:"LZ_Title_OneFingerSwipeDown".localized,
                subTitle:"LZ_SubTitle_OneFingerSwipeDown".localized,
                content:"현재 선택되어 있는 로터의 다음 항목을 실행합니다. 로터가 활성화 된 후 빠르게 쓸어 내려야 인식이 잘 됩니다.",
                imageName:"oneFingerSwipeDown"),
        
        // 쓸어넘기기: 두 손가락
        Gesture(mainCategory:.swipeTwoFingers,
                title:"LZ_Title_TwoFingerSwipeLeft".localized,
                subTitle:"LZ_SubTitle_TwoFingerSwipeLeft".localized,
                content:"(해당 제스처는 어떤 상황에서 동작하는지 찾지 못하였습니다.)",
                imageName:"twoFingerSwipeLeft"),
        
        Gesture(mainCategory:.swipeTwoFingers,
                title:"LZ_Title_TwoFingerSwipeRight".localized,
                subTitle:"LZ_SubTitle_TwoFingerSwipeRight".localized,
                content:"(해당 제스처는 어떤 상황에서 동작하는지 찾지 못하였습니다.)",
                imageName:"twoFingerSwipeRight"),
        
        Gesture(mainCategory:.swipeTwoFingers,
                title:"LZ_Title_TwoFingerSwipeUp".localized,
                subTitle:"LZ_SubTitle_TwoFingerSwipeUp".localized,
                content:"현재 화면의 최상단부터 아래로 순차적으로 모든 항목을 읽어줍니다.",
                imageName:"twoFingerSwipeUp"),
        
        Gesture(mainCategory:.swipeTwoFingers,
                title:"LZ_Title_TwoFingerSwipeDown".localized,
                subTitle:"LZ_SubTitle_TwoFingerSwipeDown".localized,
                content:"현재 화면의 선택된 항목부터 아래로 순차적으로 모든 항목을 읽어줍니다.",
                imageName:"twoFingerSwipeDown"),
        
        // 쓸어넘기기: 세 손가락
        Gesture(mainCategory:.swipeThreeFingers,
                title:"LZ_Title_ThreeFingerSwipeLeft".localized,
                subTitle:"LZ_SubTitle_ThreeFingerSwipeLeft".localized,
                content:"화면을 오른쪽으로 스크롤 합니다. \n\n스크롤을 할 수 있는 상태가 아니면 스크롤이 되지 않습니다.",
                imageName:"threeFingerSwipeLeft"),
        
        Gesture(mainCategory:.swipeThreeFingers,
                title:"LZ_Title_ThreeFingerSwipeRight".localized,
                subTitle:"LZ_SubTitle_ThreeFingerSwipeRight".localized,
                content:"화면을 왼쪽으로 스크롤 합니다. \n\n스크롤을 할 수 있는 상태가 아니면 스크롤이 되지 않습니다.",
                imageName:"threeFingerSwipeRight"),
        
        Gesture(mainCategory:.swipeThreeFingers,
                title:"LZ_Title_ThreeFingerSwipeUp".localized,
                subTitle:"LZ_SubTitle_ThreeFingerSwipeUp".localized,
                content:"화면을 아래로 스크롤 합니다. \n\n스크롤 할 수 있는 상태가 아니면 스크롤이 되지 않습니다.",
                imageName:"threeFingerSwipeUp"),
        
        Gesture(mainCategory:.swipeThreeFingers,
                title:"LZ_Title_ThreeFingerSwipeDown".localized,
                subTitle:"LZ_SubTitle_ThreeFingerSwipeDown".localized,
                content:"화면을 위로 스크롤 합니다. \n\n스크롤 할 수 있는 상태가 아니면 스크롤이 되지 않습니다.",
                imageName:"threeFingerSwipeDown"),
        
        // 쓸어넘기기: 네 손가락
        Gesture(mainCategory:.swipeFourFingers,
                title:"LZ_Title_FourFingerSwipeLeft".localized,
                subTitle:"LZ_SubTitle_FourFingerSwipeLeft".localized,
                content:"실행하고 있는 앱의 이전 앱으로 화면이 전환됩니다.",
                imageName:"fourFingerSwipeLeft"),
        
        Gesture(mainCategory:.swipeFourFingers,
                title:"LZ_Title_FourFingerSwipeRight".localized,
                subTitle:"LZ_SubTitle_FourFingerSwipeRight".localized,
                content:"실행하고 있는 앱의 다음 앱으로 화면이 전환됩니다.",
                imageName:"fourFingerSwipeRight"),
        
        Gesture(mainCategory:.swipeFourFingers,
                title:"LZ_Title_FourFingerSwipeUp".localized,
                subTitle:"LZ_SubTitle_FourFingerSwipeUp".localized,
                content:"LZ_SubTitle_FourFingerSwipeUp".localized,
                imageName:"fourFingerSwipeUp"),
        
        Gesture(mainCategory:.swipeFourFingers,
                title:"LZ_Title_FourFingerSwipeDown".localized,
                subTitle:"LZ_SubTitle_FourFingerSwipeDown".localized,
                content:"(없음)",
                imageName:"fourFingerSwipeDown"),
        
        // 회전
        Gesture(mainCategory:.rotate,
                title:"LZ_Title_TwoFingerRotateCounterClockwise".localized,
                subTitle:"LZ_SubTitle_TwoFingerRotateCounterClockwise".localized,
                content:"화면에 두 손가락을 올려놓은 채로 두 손가락을 반시계 방향으로 회전시켜서 사용이 가능합니다. 양손을 사용하는 경우에는 한 손가락은 고정해두고 나머지 한 손가락을 반시계 방향으로 드래그하세요. \n\n로터를 사용하여 음량, 말하기 속도, 음높이 변경 또는 발음 기호 사용, 에코 입력 및 구두점 읽기와 같은 설정을 조절할 수 있습니다.",
                imageName:"twoFingerRotateCounterClockwise"),
        
        Gesture(mainCategory:.rotate,
                title:"LZ_Title_TwoFingerRotateClockwise".localized,
                subTitle:"LZ_SubTitle_TwoFingerRotateClockwise".localized,
                content:"화면에 두 손가락을 올려놓은 채로 두 손가락을 시계 방향으로 회전시켜서 사용이 가능합니다. 양손을 사용하는 경우에는 한 손가락은 고정해두고 나머지 한 손가락을 시계 방향으로 드래그하세요. \n\n로터를 사용하여 음량, 말하기 속도, 음높이 변경 또는 발음 기호 사용, 에코 입력 및 구두점 읽기와 같은 설정을 조절할 수 있습니다.",
                imageName:"twoFingerRotateClockwise"),
        
        // 문지르기
        Gesture(mainCategory:.scrub,
                title:"LZ_Title_TwoFingerScrub".localized,
                subTitle:"LZ_SubTitle_TwoFingerScrub".localized,
                content:"이전 화면으로 이동하거나 화면을 닫습니다. 두 손가락을 Z모양으로 드래그하면 해당 화면의 이전 화면으로 이동하거나 제어센터, 알림센터, 앱 전환기, 앱폴더 등 닫기 버튼이 따로 없는 화면을 닫습니다. 키보드가 열려 있을 경우에는 키보드를 접을 수 있습니다.",
                imageName:"twoFingerScrub"),
        
        // 탭하고 누른 채로 있기: 두 손가락
        Gesture(mainCategory:.tabAndHoldTwoFingers,
                title:"LZ_Title_TwoFingerSingleTapAndHold".localized,
                subTitle:"LZ_SubTitle_TwoFingerSingleTapAndHold".localized,
                content:"두 손가락으로 한 번 탭하고 두 번째 탭을 알림음이 3번 울릴 때까지 누른 채로 유지합니다. VoiceOver가 읽어주는 기본 설명이 변경되고 화면상에 보이는 텍스트는 변하지 않습니다. \n\n기본 설명으로 초기화 하고 싶다면 커스텀한 설명을 모두 삭제한 뒤 비어있는 상태로 저장하시면 됩니다.",
                imageName:"twoFingerSingleTapAndHold"),
        
        // 이중 탭하고 누른 채로 휙 넘기기: 세 손가락
        Gesture(mainCategory:.doubleTabHoldAndFlickThreeFingers,
                title:"LZ_Title_ThreeFingerDoubleTapHoldAndFlickLeft".localized,
                subTitle:"LZ_SubTitle_ThreeFingerDoubleTapHoldAndFlickLeft".localized,
                content:"(해당 제스처는 어떤 상황에서 동작하는지 찾지 못했습니다.)",
                imageName:"threeFingerDoubleTapHoldAndFlickLeft"),
        
        Gesture(mainCategory:.doubleTabHoldAndFlickThreeFingers,
                title:"LZ_Title_ThreeFingerDoubleTapHoldAndFlickRight".localized,
                subTitle:"LZ_SubTitle_ThreeFingerDoubleTapHoldAndFlickRight".localized,
                content:"(해당 제스처는 어떤 상황에서 동작하는지 찾지 못했습니다.)",
                imageName:"threeFingerDoubleTapHoldAndFlickRight"),
        
        // 뒷면 탭
        Gesture(mainCategory:.backTab,
                title:"LZ_Title_DoubleTapTheBackOfYouriPhone".localized,
                subTitle:"LZ_SubTitle_DoubleTapTheBackOfYouriPhone".localized,
                content:"(없음)",
                imageName:"doubleTapTheBackOfYouriPhone"),
        
        Gesture(mainCategory:.backTab,
                title:"LZ_Title_TripleTapTheBackOfYouriPhone".localized,
                subTitle:"LZ_SubTitle_TripleTapTheBackOfYouriPhone".localized,
                content:"(없음)",
                imageName:"tripleTapTheBackOfYouriPhone")
    ]
}




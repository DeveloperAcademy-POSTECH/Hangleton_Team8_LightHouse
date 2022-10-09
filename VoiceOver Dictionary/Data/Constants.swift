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
        // tab
        case tabOneFinger = "탭: 한 손가락"
        case tabTwoFingers = "탭: 두 손가락"
        case tabThreeFingers = "탭: 세 손가락"
        case tabFourFingers = "탭: 네 손가락"
        // swipe
        case swipeOneFinger = "쓸어넘기기: 한 손가락"
        case swipeTwoFingers = "쓸어넘기기: 두 손가락"
        case swipeThreeFingers = "쓸어넘기기: 세 손가락"
        case swipeFourFingers = "쓸어넘기기: 네 손가락"
        // rotate
        case rotate = "회전"
        // scrub
        case scrub = "문지르기"
        // tab & hold two fingers
        case tabAndHoldTwoFingers = "탭하고 누른 채로 있기: 두 손가락"
        // double tab, hold, & flick
        case doubleTabHoldAndFlickThreeFingers = "이중 탭하고 누른 채로 휙 넘기기: 세 손가락"
        // Back tab
        case backTab = "뒷면 탭"
    }
    
    static let GestureArray = [
        Gesture(mainCategory:.convenienceFeatures,title:"VoiceOver를 시작하기",subTitle:"VoiceOver를 켜거나 끄는 방법",content:"총 세 가지 방법이 있습니다.\n\n첫 번째로, 시리를 호출한 후 “보이스오버 켜줘”라고 말할 시 VoiceOver 기능을 사용하실 수 있습니다. 다시 끄고 싶은 경우에는 시리를 호출한 후 “보이스오버 꺼줘”라고 말해보세요. \n\n두 번째로, 설정 앱에서 “손쉬운 사용”으로 이동 후 VoiceOver 화면으로 이동하면, VoiceOver를 켜고 끌 수 있습니다. \n\n마지막으로, 설정 앱에서 “손쉬운 사용”으로 이동 후 “손쉬운 사용 단축키”에서 VoiceOver를 단축키로 설정할 수 있습니다. 설정 후에 홈버튼이 없는 기종의 경우 전원 버튼을 삼중 클릭하면 VoiceOver를 끄고 킬 수 있습니다. 홈버튼이 있는 기종의 경우에는 홈 버튼을 삼중 클릭하세요.",imageName:"startVoiceOver"),
        Gesture(mainCategory:.convenienceFeatures,title:"세 손가락으로 삼중 탭",subTitle:"화면 커튼 토글",content:"화면 커튼이 켜져 있으면 화면을 완전히 어둡게 만들어줍니다. 다른 사람에게는 화면이 꺼져 보이지만, 기기 및 VoiceOver 탐색이 활성 상태로 유지됩니다. 개인정보 보호 기능을 강화 시 키기기 위해서 해당 기능을 사용하실 수 있습니다. \n\n한 번 더 세 손가락으로 삼중 탭 할 경우 화면 커튼 기능이 꺼집니다. \n\n손쉬운 사용의 확대/축소가 활성화되어 있으면 세 손가락으로 사중 탭 하기 제스처를 통해 해당 기능을 이용할 수 있습니다.",imageName:"threeFingerTripleTap"),
        Gesture(mainCategory:.convenienceFeatures,title:"두 손가락으로 문지르기",subTitle:"Escape",content:"이전 화면으로 이동하거나 화면을 닫습니다. 두 손가락을 Z모양으로 드래그하면 해당 화면의 이전 화면으로 이동하거나 제어센터, 알림센터, 앱 전환기, 앱폴더 등 닫기 버튼이 따로 없는 화면을 닫습니다. 키보드가 열려 있을 경우에는 키보드를 접을 수 있습니다.",imageName:"twoFingerScrub"),
        Gesture(mainCategory:.convenienceFeatures,title:"반시계 방향으로 두 손가락 회전",subTitle:"이전 로터",content:"화면에 두 손가락을 올려놓은 채로 두 손가락을 반시계 방향으로 회전시켜서 사용이 가능합니다. 양손을 사용하는 경우에는 한 손가락은 고정해두고 나머지 한 손가락을 반시계 방향으로 드래그하세요. \n\n로터를 사용하여 음량, 말하기 속도, 음높이 변경 또는 발음 기호 사용, 에코 입력 및 구두점 읽기와 같은 설정을 조절할 수 있습니다.",imageName:"rotorClounterClockwise"),
        Gesture(mainCategory:.requiredFeatures,title:"홈으로 이동하기",subTitle:"홈으로 이동하기 위한 방법",content:"홈버튼이 없는 기종일 경우 알림음이 2번 울릴 때까지 화면 하단 가장자리에서 위의 방향으로 쓸어 올리세요. \n\n홈버튼이 있는 기종의 경우에는 홈 버튼을 한번 클릭하세요.",imageName:"moveToHome"),
        Gesture(mainCategory:.requiredFeatures,title:"앱 전환기",subTitle:"앱 전환기를 실행하기 위한 방법",content:"홈버튼이 없는 기종일 경우 알림음이 3번 울릴 때까지 화면 하단 가장자리에서 위의 방향으로 길게 쓸어 올리세요. \n\n홈버튼이 있는 기종일 경우 홈 버튼을 두 번 클릭하세요. \n\n앱 전환기에 있는 앱을 삭제하고 싶은 경우 해당 앱을 선택하고 세 손가락을 위로 드래그하세요.",imageName:"appSwitcher"),
        Gesture(mainCategory:.requiredFeatures,title:"제어센터",subTitle:"제어센터를 열거나 닫기 위한 방법",content:"시간, 배터리 등 상태 아이콘이 표시되어 있는 최상단의 상태 막대를 탭한 후 세 손가락을 위쪽 방향으로 쓸어 올리세요. \n\n제어센터를 닫으려면 두 손가락으로 문지르기를 하시면 됩니다.",imageName:"controlCenter"),
        Gesture(mainCategory:.requiredFeatures,title:"알림센터",subTitle:"알림센터를 열거나 닫기 위한 방법",content:"시간 및 베터리가 표시되어 있는 최상단의 상태 막대를 탭한 후 세 손가락을 아래쪽 방향으로 쓸어 내리세요. \n\n알림센터를 닫으려면 두 손가락으로 문지르기를 하시면 됩니다.",imageName:"notificationCenter"),
        Gesture(mainCategory:.tabOneFinger,title:"한 손가락으로 한 번 탭",subTitle:"항목 말하기",content:"터치한 대상을 알려줍니다.",imageName:"oneFingerSingleTap"),
        Gesture(mainCategory:.tabOneFinger,title:"한 손가락으로 이중 탭",subTitle:"활성화",content:"선택된 대상을 동작시킵니다. VoiceOver가 꺼져있는 상태에서의 클릭과 비슷한 역할을 수행합니다. \n\n예를 들어 토글이 선택되어 있다면 토글을 켜거나 끄며, 버튼이 선택되어 있다면 버튼을 실행합니다. \n\n대상을 실행시키는 기본 동작입니다.",imageName:"oneFingerDoubleTap"),
        Gesture(mainCategory:.tabOneFinger,title:"한 손가락으로 삼중 탭",subTitle:"길게 누르기 수행",content:"빠른 메뉴를 실행시킵니다. 앱 편집 등에 활용 가능합니다. \n\n빠른 메뉴 화면을 닫으려면 두 손가락으로 문지르기를 하시면 됩니다.",imageName:"oneFingerTripleTap"),
        Gesture(mainCategory:.tabOneFinger,title:"한 손가락으로 사중 탭",subTitle:"보조 활성화",content:"보조 활성화를 지원하지 않는 대상이라면 한 손가락으로 이중 탭을 두 번 실행한 것으로 인식합니다. \n\n(보조 활성화가 사용된 예시는 아직 찾지 못했습니다.)",imageName:"oneFingerQuadrupleTap"),
        Gesture(mainCategory:.tabTwoFingers,title:"두 손가락으로 한 번 탭",subTitle:"말하기 토글",content:"VoiceOver가 말하는 도중에 두 손가락으로 화면을 터치하면 말을 끊고 멈춥니다. 한 번 더 두 손가락으로 한번 탭 할 경우 멈춘 부분부터 다시 재생합니다.",imageName:"twoFingerSingleTap"),
        Gesture(mainCategory:.tabTwoFingers,title:"두 손가락으로 이중 탭",subTitle:"매직 탭",content:"음악이나 영상 등 재생 중인 미디어가 중지됩니다. 한 번 더 두 손가락으로 이중 탭 할 경우 멈춰진 부분부터 다시 재생됩니다. 텍스트의 경우에는 말을 끊고 멈춥니다. \n\n텍스트를 입력 할 때 두 손가락으로 이중 탭을 하면 사용자의 음성을 인식하여 음성을 텍스트로 전환하여 입력합니다.",imageName:"twoFingerDoubleTap"),
        Gesture(mainCategory:.tabTwoFingers,title:"두 손가락으로 삼중 탭",subTitle:"항목 선택 화면 보기",content:"현재 화면에 있는 항목들이 한글일 경우 가나다순으로, 영어일 경우 알파벳순으로 리스트 형태로 정렬되어 표시됩니다. \n\n두 손가락으로 문지르기를 하면 항목 선택 화면이 해제됩니다.",imageName:"twoFingerTripleTap"),
        Gesture(mainCategory:.tabTwoFingers,title:"두 손가락으로 사중 탭",subTitle:"빠른 설정 열기",content:"VoiceOver에 대한 빠른 설정 화면이 열립니다. \n\n두 손가락으로 문지르기를 하면 빠른 설정 화면이 해제 됩니다.",imageName:"twoFingerQuadrupleTap"),
        Gesture(mainCategory:.tabThreeFingers,title:"세 손가락으로 한 번 탭",subTitle:"항목 요약 읽기",content:"현재 화면에서 선택되어 있는 항목에 대한 정보를 요약해서 설명해 줍니다.",imageName:"threeFingerSingleTap"),
        Gesture(mainCategory:.tabThreeFingers,title:"세 손가락으로 이중 탭",subTitle:"소리 끔 토글",content:"VoiceOver의 말하기 기능이 꺼집니다. \n\n한 번 더 세 손가락으로 이중 탭을 하면 말하기 기능이 다시 켜집니다.",imageName:"threeFingerDoubleTap"),
        Gesture(mainCategory:.tabThreeFingers,title:"세 손가락으로 삼중 탭",subTitle:"화면 커튼 토글",content:"화면 커튼 기능이 켜서 화면을 완전히 어둡게 만들어줍니다. 다른 사람에게는 화면이 꺼져 보이지만, 기기 및 VoiceOver 탐색이 활성 상태로 유지됩니다. 개인정보 보호 기능을 강화 시 키기기 위해서 해당 기능을 사용하실 수 있습니다. \n\n한 번 더 세 손가락으로 삼중 탭하면 화면 커튼 기능이 꺼집니다. \n\n손쉬운 사용의 확대/축소가 활성화되어 있으면 세 손가락으로 사중 탭하여 통해 해당 기능을 이용할 수 있습니다.",imageName:"threeFingerTripleTap"),
        Gesture(mainCategory:.tabThreeFingers,title:"세 손가락으로 사중 탭",subTitle:"말하기 내용을 클립보드로 복사",content:"현재 항목의 말하기 내용을 클립보드로 복사됩니다. 손쉬운 사용의 확대/축소가 활성화되어 있으면 세 손가락으로 오중 탭하여 통해 해당 기능을 이용할 수 있습니다.",imageName:"threeFingerQuadrupleTap"),
        Gesture(mainCategory:.tabFourFingers,title:"네 손가락으로 한 번 탭",subTitle:"최상단 혹은 최하단 항목 선택",content:"현재 화면에서 VoiceOver가 접근 가능한 제일 위의 항목을 선택합니다. 한 번 더 네 손가락으로 한 번 탭하면 접근 가능한 제일 마지막 항목을 선택합니다.",imageName:"fourFingerSingleTap"),
        Gesture(mainCategory:.tabFourFingers,title:"네 손가락으로 이중 탭",subTitle:"시작 도움말",content:"VoiceOver 연습을 실행할 수 있습니다. \n\n한 번 더 네 손가락으로 이중 탭하면 VoiceOver 연습을 종료합니다.",imageName:"fourFingerDoubleTap"),
        Gesture(mainCategory:.tabFourFingers,title:"네 손가락으로 삼중 탭",subTitle:"감지 모드",content:"주변 탐색을 하는 데 도움을 주는 확대기의 감지 모드 기능을 사용하실 수 있습니다. \n\n다만, iOS 16 이상의 라이더 센서가 있는 iPhone 12 이상 Pro 기종에서만 감지 모드의 전체 기능을 사용할 수 있습니다.",imageName:"fourFingerTripleTap"),
        Gesture(mainCategory:.tabFourFingers,title:"네 손가락으로 사중 탭",subTitle:"(없음)",content:"(없음)",imageName:"fourFingerQuadrupleTap"),
        Gesture(mainCategory:.swipeOneFinger,title:"한 손가락으로 왼쪽으로 쓸어 넘기기",subTitle:"이전 항목으로 이동",content:"이전 항목을 선택합니다. 빠르게 쓸어 넘겨야 한 손가락으로 탭 후 드래그로 인식하지 않습니다.",imageName:"oneFingerSwipeLeft"),
        Gesture(mainCategory:.swipeOneFinger,title:"한 손가락으로 오른쪽으로 쓸어 넘기기",subTitle:"다음 항목으로 이동",content:"다음 항목을 선택합니다. 빠르게 쓸어 넘겨야 한 손가락으로 탭 후 드래그로 인식하지 않습니다.",imageName:"oneFingerSwipeRight"),
        Gesture(mainCategory:.swipeOneFinger,title:"한 손가락으로 위로 쓸어 올리기",subTitle:"이전 로터 항목",content:"현재 선택되어 있는 로터의 이전 항목을 실행합니다. 로터가 활성화 된 후 빠르게 쓸어 올려야 인식이 잘 됩니다.",imageName:"oneFingerSwipeUp"),
        Gesture(mainCategory:.swipeOneFinger,title:"한 손가락으로 아래로 쓸어 내리기",subTitle:"다음 로터 항목",content:"현재 선택되어 있는 로터의 다음 항목을 실행합니다. 로터가 활성화 된 후 빠르게 쓸어 내려야 인식이 잘 됩니다.",imageName:"oneFingerSwipeDown"),
        Gesture(mainCategory:.swipeTwoFingers,title:"두 손가락으로 왼쪽으로 쓸어 넘기기",subTitle:"밖으로 이동",content:"(해당 제스처는 어떤 상황에서 동작하는지 찾지 못하였습니다.)",imageName:"twoFingerSwipeLeft"),
        Gesture(mainCategory:.swipeTwoFingers,title:"두 손가락으로 오른쪽으로 쓸어 넘기기",subTitle:"안으로 이동",content:"(해당 제스처는 어떤 상황에서 동작하는지 찾지 못하였습니다.)",imageName:"twoFingerSwipeRight"),
        Gesture(mainCategory:.swipeTwoFingers,title:"두 손가락으로 위로 쓸어 올리기",subTitle:"위에서부터 읽기",content:"현재 화면의 최상단부터 아래로 순차적으로 모든 항목을 읽어줍니다.",imageName:"twoFingerSwipeUp"),
        Gesture(mainCategory:.swipeTwoFingers,title:"두 손가락으로 아래로 쓸어 내리기",subTitle:"모두 읽기",content:"현재 화면의 선택된 항목부터 아래로 순차적으로 모든 항목을 읽어줍니다.",imageName:"twoFingerSwipeDown"),
        Gesture(mainCategory:.swipeThreeFingers,title:"세 손가락으로 왼쪽으로 쓸어 넘기기",subTitle:"오른쪽으로 스크롤",content:"화면을 오른쪽으로 스크롤 합니다. \n\n스크롤을 할 수 있는 상태가 아니면 스크롤이 되지 않습니다.",imageName:"threeFingerSwipeLeft"),
        Gesture(mainCategory:.swipeThreeFingers,title:"세 손가락으로 오른쪽으로 쓸어 넘기기",subTitle:"왼쪽으로 스크롤",content:"화면을 왼쪽으로 스크롤 합니다. \n\n스크롤을 할 수 있는 상태가 아니면 스크롤이 되지 않습니다.",imageName:"threeFingerSwipeRight"),
        Gesture(mainCategory:.swipeThreeFingers,title:"세 손가락으로 위로 쓸어 올리기",subTitle:"아래로 스크롤",content:"화면을 아래로 스크롤 합니다. \n\n스크롤 할 수 있는 상태가 아니면 스크롤이 되지 않습니다.",imageName:"threeFingerSwipeUp"),
        Gesture(mainCategory:.swipeThreeFingers,title:"세 손가락으로 아래로 쓸어 내리기",subTitle:"위로 스크롤",content:"화면을 위로 스크롤 합니다. \n\n스크롤 할 수 있는 상태가 아니면 스크롤이 되지 않습니다.",imageName:"threeFingerSwipeDown"),
        Gesture(mainCategory:.swipeFourFingers,title:"네 손가락으로 왼쪽으로 쓸어넘기기",subTitle:"이전 앱으로 전환",content:"실행하고 있는 앱의 이전 앱으로 화면이 전환됩니다.",imageName:"fourFingerSwipeLeft"),
        Gesture(mainCategory:.swipeFourFingers,title:"네 손가락으로 오른쪽으로 쓸어넘기기",subTitle:"다음 앱으로 전환",content:"실행하고 있는 앱의 다음 앱으로 화면이 전환됩니다.",imageName:"fourFingerSwipeRight"),
        Gesture(mainCategory:.swipeFourFingers,title:"네 손가락으로 위로 쓸어넘기기",subTitle:"(없음)",content:"(없음)",imageName:"fourFingerSwipeUp"),
        Gesture(mainCategory:.swipeFourFingers,title:"네 손가락으로 아래로 쓸어넘기기",subTitle:"(없음)",content:"(없음)",imageName:"fourFingerSwipeDown"),
        Gesture(mainCategory:.rotate,title:"반시계 방향으로 두 손가락 회전",subTitle:"이전 로터",content:"화면에 두 손가락을 올려놓은 채로 두 손가락을 반시계 방향으로 회전시켜서 사용이 가능합니다. 양손을 사용하는 경우에는 한 손가락은 고정해두고 나머지 한 손가락을 반시계 방향으로 드래그하세요. \n\n로터를 사용하여 음량, 말하기 속도, 음높이 변경 또는 발음 기호 사용, 에코 입력 및 구두점 읽기와 같은 설정을 조절할 수 있습니다.",imageName:"twoFingerRotateCounterClockwise"),
        Gesture(mainCategory:.rotate,title:"시계 방향으로 두 손가락 회전",subTitle:"다음 로터",content:"화면에 두 손가락을 올려놓은 채로 두 손가락을 시계 방향으로 회전시켜서 사용이 가능합니다. 양손을 사용하는 경우에는 한 손가락은 고정해두고 나머지 한 손가락을 시계 방향으로 드래그하세요. \n\n로터를 사용하여 음량, 말하기 속도, 음높이 변경 또는 발음 기호 사용, 에코 입력 및 구두점 읽기와 같은 설정을 조절할 수 있습니다.",imageName:"twoFingerRotateClockwise"),
        Gesture(mainCategory:.scrub,title:"두 손가락으로 문지르기",subTitle:"Escape",content:"이전 화면으로 이동하거나 화면을 닫습니다. 두 손가락을 Z모양으로 드래그하면 해당 화면의 이전 화면으로 이동하거나 제어센터, 알림센터, 앱 전환기, 앱폴더 등 닫기 버튼이 따로 없는 화면을 닫습니다. 키보드가 열려 있을 경우에는 키보드를 접을 수 있습니다.",imageName:"twoFingerScrub"),
        Gesture(mainCategory:.tabAndHoldTwoFingers,title:"두 손가락으로 한 번 탭하고 누른 채로 있기",subTitle:"항목 레이블 정하기",content:"두 손가락으로 한 번 탭하고 두 번째 탭을 알림음이 3번 울릴 때까지 누른 채로 유지합니다. VoiceOver가 읽어주는 기본 설명이 변경되고 화면상에 보이는 텍스트는 변하지 않습니다. \n\n기본 설명으로 초기화 하고 싶다면 커스텀한 설명을 모두 삭제한 뒤 비어있는 상태로 저장하시면 됩니다.",imageName:"twoFingerSingleTapAndHold"),
        Gesture(mainCategory:.doubleTabHoldAndFlickThreeFingers,title:"세 손가락으로 이중 탭하고 누른 채로 왼쪽으로 휙 넘기기",subTitle:"실행 취소",content:"(해당 제스처는 어떤 상황에서 동작하는지 찾지 못했습니다.)",imageName:"threeFingerDoubleTapHoldAndFlickLeft"),
        Gesture(mainCategory:.doubleTabHoldAndFlickThreeFingers,title:"세 손가락으로 이중 탭하고 누른 채로 오른쪽으로 휙 넘기기",subTitle:"실행 복귀",content:"(해당 제스처는 어떤 상황에서 동작하는지 찾지 못했습니다.)",imageName:"threeFingerDoubleTapHoldAndFlickRight"),
        Gesture(mainCategory:.backTab,title:"iPhone의 뒷면을 이중 탭하기",subTitle:"(없음)",content:"(없음)",imageName:"doubleTapTheBackOfYouriPhone"),
        Gesture(mainCategory:.backTab,title:"iPhone의 뒷면을 삼중 탭하기",subTitle:"(없음)",content:"(없음)",imageName:"tripleTapTheBackOfYouriPhone")
    ]
}




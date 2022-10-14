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
                content:"LZ_Content_StartVoiceOver".localized,
                imageName:"startVoiceOver"),
        
        Gesture(mainCategory:.requiredFeatures,
                title:"LZ_Title_ThreeFingerTripleTap".localized,
                subTitle:"LZ_SubTitle_ThreeFingerTripleTap".localized,
                content:"LZ_Content_ThreeFingerTripleTap".localized,
                imageName:"threeFingerTripleTap"),
        
        Gesture(mainCategory:.requiredFeatures,
                title:"LZ_Title_TwoFingerScrub".localized,
                subTitle:"LZ_SubTitle_TwoFingerScrub".localized,
                content:"LZ_Content_TwoFingerScrub".localized,
                imageName:"twoFingerScrub"),
        
        Gesture(mainCategory:.requiredFeatures,
                title:"LZ_Title_RotorClounterClockwise".localized,
                subTitle:"LZ_SubTitle_RotorClounterClockwise".localized,
                content:"LZ_Content_RotorClounterClockwise".localized,
                imageName:"rotorClounterClockwise"),
        
        //편의기능
        Gesture(mainCategory:.convenienceFeatures,
                title:"LZ_Title_MoveToHome".localized,
                subTitle:"LZ_SubTitle_MoveToHome".localized,
                content:"LZ_Content_MoveToHome".localized,
                imageName:"moveToHome"),
        
        Gesture(mainCategory:.convenienceFeatures,
                title:"LZ_Title_AppSwitcher".localized,
                subTitle:"LZ_SubTitle_AppSwitcher".localized,
                content:"LZ_Content_AppSwitcher".localized,
                imageName:"appSwitcher"),
        
        Gesture(mainCategory:.convenienceFeatures,
                title:"LZ_Title_ControlCenter".localized,
                subTitle:"LZ_SubTitle_ControlCenter".localized,
                content:"LZ_Content_ControlCenter".localized,
                imageName:"controlCenter"),
        
        Gesture(mainCategory:.convenienceFeatures,
                title:"LZ_Title_NotificationCenter".localized,
                subTitle:"LZ_SubTitle_NotificationCenter".localized,
                content:"LZ_Content_NotificationCenter".localized,
                imageName:"notificationCenter"),
        
        // 탭: 한 손가락
        Gesture(mainCategory:.tabOneFinger,
                title:"LZ_Title_OneFingerSingleTap".localized,
                subTitle:"LZ_SubTitle_OneFingerSingleTap".localized,
                content:"LZ_Content_OneFingerSingleTap".localized,
                imageName:"oneFingerSingleTap"),
        
        Gesture(mainCategory:.tabOneFinger,
                title:"LZ_Title_OneFingerDoubleTap".localized,
                subTitle:"LZ_SubTitle_OneFingerDoubleTap".localized,
                content:"LZ_Content_OneFingerDoubleTap".localized,
                imageName:"oneFingerDoubleTap"),
        
        Gesture(mainCategory:.tabOneFinger,
                title:"LZ_Title_OneFingerTripleTap".localized,
                subTitle:"LZ_SubTitle_OneFingerTripleTap".localized,
                content:"LZ_Content_OneFingerTripleTap".localized,
                imageName:"oneFingerTripleTap"),
        
        Gesture(mainCategory:.tabOneFinger,
                title:"LZ_Title_OneFingerQuadrupleTap".localized,
                subTitle:"LZ_SubTitle_OneFingerQuadrupleTap".localized,
                content:"LZ_Content_OneFingerQuadrupleTap".localized,
                imageName:"oneFingerQuadrupleTap"),
        
        // 탭: 두 손가락
        Gesture(mainCategory:.tabTwoFingers,
                title:"LZ_Title_TwoFingerSingleTap".localized,
                subTitle:"LZ_SubTitle_TwoFingerSingleTap".localized,
                content:"LZ_Content_TwoFingerSingleTap".localized,
                imageName:"twoFingerSingleTap"),
        
        Gesture(mainCategory:.tabTwoFingers,
                title:"LZ_Title_TwoFingerDoubleTap".localized,
                subTitle:"LZ_SubTitle_TwoFingerDoubleTap".localized,
                content:"LZ_Content_TwoFingerDoubleTap".localized,
                imageName:"twoFingerDoubleTap"),
        
        Gesture(mainCategory:.tabTwoFingers,
                title:"LZ_Title_TwoFingerTripleTap".localized,
                subTitle:"LZ_SubTitle_TwoFingerTripleTap".localized,
                content:"LZ_Content_TwoFingerTripleTap".localized,
                imageName:"twoFingerTripleTap"),
        
        Gesture(mainCategory:.tabTwoFingers,
                title:"LZ_Title_TwoFingerQuadrupleTap".localized,
                subTitle:"LZ_SubTitle_TwoFingerQuadrupleTap".localized,
                content:"LZ_Content_TwoFingerQuadrupleTap".localized,
                imageName:"twoFingerQuadrupleTap"),
        
        // 탭: 세 손가락
        Gesture(mainCategory:.tabThreeFingers,
                title:"LZ_Title_ThreeFingerSingleTap".localized,
                subTitle:"LZ_SubTitle_ThreeFingerSingleTap".localized,
                content:"LZ_Content_ThreeFingerSingleTap".localized,
                imageName:"threeFingerSingleTap"),
        
        Gesture(mainCategory:.tabThreeFingers,
                title:"LZ_Title_ThreeFingerDoubleTap".localized,
                subTitle:"LZ_SubTitle_ThreeFingerDoubleTap".localized,
                content:"LZ_Content_ThreeFingerDoubleTap".localized,
                imageName:"threeFingerDoubleTap"),
        
        Gesture(mainCategory:.tabThreeFingers,
                title:"LZ_Title_ThreeFingerTripleTap".localized,
                subTitle:"LZ_SubTitle_ThreeFingerTripleTap".localized,
                content:"LZ_Content_ThreeFingerTripleTap".localized,
                imageName:"threeFingerTripleTap"),
        
        Gesture(mainCategory:.tabThreeFingers,
                title:"LZ_Title_ThreeFingerQuadrupleTap".localized,
                subTitle:"LZ_SubTitle_ThreeFingerQuadrupleTap".localized,
                content:"LZ_Content_ThreeFingerQuadrupleTap".localized,
                imageName:"threeFingerQuadrupleTap"),
        
        // 탭: 네 손가락
        Gesture(mainCategory:.tabFourFingers,
                title:"LZ_Title_FourFingerSingleTap".localized,
                subTitle:"LZ_SubTitle_FourFingerSingleTap".localized,
                content:"LZ_Content_FourFingerSingleTap".localized,
                imageName:"fourFingerSingleTap"),
        
        Gesture(mainCategory:.tabFourFingers,
                title:"LZ_Title_FourFingerDoubleTap".localized,
                subTitle:"LZ_SubTitle_FourFingerDoubleTap".localized,
                content:"LZ_Content_FourFingerDoubleTap".localized,
                imageName:"fourFingerDoubleTap"),
        
        Gesture(mainCategory:.tabFourFingers,
                title:"LZ_Title_FourFingerTripleTap".localized,
                subTitle:"LZ_SubTitle_FourFingerTripleTap".localized,
                content:"LZ_Content_FourFingerTripleTap".localized,
                imageName:"fourFingerTripleTap"),
        
        Gesture(mainCategory:.tabFourFingers,
                title:"LZ_Title_FourFingerQuadrupleTap".localized,
                subTitle:"LZ_SubTitle_FourFingerQuadrupleTap".localized,
                content:"LZ_Content_FourFingerQuadrupleTap".localized,
                imageName:"fourFingerQuadrupleTap"),
        
        // 쓸어넘기기: 한 손가락
        Gesture(mainCategory:.swipeOneFinger,
                title:"LZ_Title_OneFingerSwipeLeft".localized,
                subTitle:"LZ_SubTitle_OneFingerSwipeLeft".localized,
                content:"LZ_Content_OneFingerSwipeLeft".localized,
                imageName:"oneFingerSwipeLeft"),
        
        Gesture(mainCategory:.swipeOneFinger,
                title:"LZ_Title_OneFingerSwipeRight".localized,
                subTitle:"LZ_SubTitle_OneFingerSwipeRight".localized,
                content:"LZ_Content_OneFingerSwipeRight".localized,
                imageName:"oneFingerSwipeRight"),
        
        Gesture(mainCategory:.swipeOneFinger,
                title:"LZ_Title_OneFingerSwipeUp".localized,
                subTitle:"LZ_SubTitle_OneFingerSwipeUp".localized,
                content:"LZ_Content_OneFingerSwipeUp".localized,
                imageName:"oneFingerSwipeUp"),
        
        Gesture(mainCategory:.swipeOneFinger,
                title:"LZ_Title_OneFingerSwipeDown".localized,
                subTitle:"LZ_SubTitle_OneFingerSwipeDown".localized,
                content:"LZ_Content_OneFingerSwipeDown".localized,
                imageName:"oneFingerSwipeDown"),
        
        // 쓸어넘기기: 두 손가락
        Gesture(mainCategory:.swipeTwoFingers,
                title:"LZ_Title_TwoFingerSwipeLeft".localized,
                subTitle:"LZ_SubTitle_TwoFingerSwipeLeft".localized,
                content:"LZ_Content_TwoFingerSwipeLeft".localized,
                imageName:"twoFingerSwipeLeft"),
        
        Gesture(mainCategory:.swipeTwoFingers,
                title:"LZ_Title_TwoFingerSwipeRight".localized,
                subTitle:"LZ_SubTitle_TwoFingerSwipeRight".localized,
                content:"LZ_Content_TwoFingerSwipeRight".localized,
                imageName:"twoFingerSwipeRight"),
        
        Gesture(mainCategory:.swipeTwoFingers,
                title:"LZ_Title_TwoFingerSwipeUp".localized,
                subTitle:"LZ_SubTitle_TwoFingerSwipeUp".localized,
                content:"LZ_Content_TwoFingerSwipeUp".localized,
                imageName:"twoFingerSwipeUp"),
        
        Gesture(mainCategory:.swipeTwoFingers,
                title:"LZ_Title_TwoFingerSwipeDown".localized,
                subTitle:"LZ_SubTitle_TwoFingerSwipeDown".localized,
                content:"LZ_Content_TwoFingerSwipeDown".localized,
                imageName:"twoFingerSwipeDown"),
        
        // 쓸어넘기기: 세 손가락
        Gesture(mainCategory:.swipeThreeFingers,
                title:"LZ_Title_ThreeFingerSwipeLeft".localized,
                subTitle:"LZ_SubTitle_ThreeFingerSwipeLeft".localized,
                content:"LZ_Content_ThreeFingerSwipeLeft".localized,
                imageName:"threeFingerSwipeLeft"),
        
        Gesture(mainCategory:.swipeThreeFingers,
                title:"LZ_Title_ThreeFingerSwipeRight".localized,
                subTitle:"LZ_SubTitle_ThreeFingerSwipeRight".localized,
                content:"LZ_Content_ThreeFingerSwipeRight".localized,
                imageName:"threeFingerSwipeRight"),
        
        Gesture(mainCategory:.swipeThreeFingers,
                title:"LZ_Title_ThreeFingerSwipeUp".localized,
                subTitle:"LZ_SubTitle_ThreeFingerSwipeUp".localized,
                content:"LZ_Content_ThreeFingerSwipeUp".localized,
                imageName:"threeFingerSwipeUp"),
        
        Gesture(mainCategory:.swipeThreeFingers,
                title:"LZ_Title_ThreeFingerSwipeDown".localized,
                subTitle:"LZ_SubTitle_ThreeFingerSwipeDown".localized,
                content:"LZ_Content_ThreeFingerSwipeDown".localized,
                imageName:"threeFingerSwipeDown"),
        
        // 쓸어넘기기: 네 손가락
        Gesture(mainCategory:.swipeFourFingers,
                title:"LZ_Title_FourFingerSwipeLeft".localized,
                subTitle:"LZ_SubTitle_FourFingerSwipeLeft".localized,
                content:"LZ_Content_FourFingerSwipeLeft".localized,
                imageName:"fourFingerSwipeLeft"),
        
        Gesture(mainCategory:.swipeFourFingers,
                title:"LZ_Title_FourFingerSwipeRight".localized,
                subTitle:"LZ_SubTitle_FourFingerSwipeRight".localized,
                content:"LZ_Content_FourFingerSwipeRight".localized,
                imageName:"fourFingerSwipeRight"),
        
        Gesture(mainCategory:.swipeFourFingers,
                title:"LZ_Title_FourFingerSwipeUp".localized,
                subTitle:"LZ_SubTitle_FourFingerSwipeUp".localized,
                content:"LZ_SubTitle_FourFingerSwipeUp".localized,
                imageName:"fourFingerSwipeUp"),
        
        Gesture(mainCategory:.swipeFourFingers,
                title:"LZ_Title_FourFingerSwipeDown".localized,
                subTitle:"LZ_SubTitle_FourFingerSwipeDown".localized,
                content:"LZ_Content_FourFingerSwipeDown".localized,
                imageName:"fourFingerSwipeDown"),
        
        // 회전
        Gesture(mainCategory:.rotate,
                title:"LZ_Title_TwoFingerRotateCounterClockwise".localized,
                subTitle:"LZ_SubTitle_TwoFingerRotateCounterClockwise".localized,
                content:"LZ_Content_TwoFingerRotateCounterClockwise".localized,
                imageName:"twoFingerRotateCounterClockwise"),
        
        Gesture(mainCategory:.rotate,
                title:"LZ_Title_TwoFingerRotateClockwise".localized,
                subTitle:"LZ_SubTitle_TwoFingerRotateClockwise".localized,
                content:"LZ_Content_TwoFingerRotateClockwise".localized,
                imageName:"twoFingerRotateClockwise"),
        
        // 문지르기
        Gesture(mainCategory:.scrub,
                title:"LZ_Title_TwoFingerScrub".localized,
                subTitle:"LZ_SubTitle_TwoFingerScrub".localized,
                content:"LZ_Content_TwoFingerScrub".localized,
                imageName:"twoFingerScrub"),
        
        // 탭하고 누른 채로 있기: 두 손가락
        Gesture(mainCategory:.tabAndHoldTwoFingers,
                title:"LZ_Title_TwoFingerSingleTapAndHold".localized,
                subTitle:"LZ_SubTitle_TwoFingerSingleTapAndHold".localized,
                content:"LZ_Content_TwoFingerSingleTapAndHold".localized,
                imageName:"twoFingerSingleTapAndHold"),
        
        // 이중 탭하고 누른 채로 휙 넘기기: 세 손가락
        Gesture(mainCategory:.doubleTabHoldAndFlickThreeFingers,
                title:"LZ_Title_ThreeFingerDoubleTapHoldAndFlickLeft".localized,
                subTitle:"LZ_SubTitle_ThreeFingerDoubleTapHoldAndFlickLeft".localized,
                content:"LZ_Content_ThreeFingerDoubleTapHoldAndFlickLeft".localized,
                imageName:"threeFingerDoubleTapHoldAndFlickLeft"),
        
        Gesture(mainCategory:.doubleTabHoldAndFlickThreeFingers,
                title:"LZ_Title_ThreeFingerDoubleTapHoldAndFlickRight".localized,
                subTitle:"LZ_SubTitle_ThreeFingerDoubleTapHoldAndFlickRight".localized,
                content:"LZ_Content_ThreeFingerDoubleTapHoldAndFlickRight".localized,
                imageName:"threeFingerDoubleTapHoldAndFlickRight"),
        
        // 뒷면 탭
        Gesture(mainCategory:.backTab,
                title:"LZ_Title_DoubleTapTheBackOfYouriPhone".localized,
                subTitle:"LZ_SubTitle_DoubleTapTheBackOfYouriPhone".localized,
                content:"LZ_Content_DoubleTapTheBackOfYouriPhone".localized,
                imageName:"doubleTapTheBackOfYouriPhone"),
        
        Gesture(mainCategory:.backTab,
                title:"LZ_Title_TripleTapTheBackOfYouriPhone".localized,
                subTitle:"LZ_SubTitle_TripleTapTheBackOfYouriPhone".localized,
                content:"LZ_Content_TripleTapTheBackOfYouriPhone".localized,
                imageName:"tripleTapTheBackOfYouriPhone")
    ]
}




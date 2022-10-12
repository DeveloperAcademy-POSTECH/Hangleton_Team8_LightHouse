//
//  ExtensionUINavigationController.swift
//  VoiceOver Dictionary
//
//  Created by Ruyha on 2022/10/09.
//
//스크롤바와 네비게이션뷰가 제스쳐 충돌을 이르켜 발생하는 문제를
//제거했습니다.
// https://stackoverflow.com/questions/69958103/scrollview-conflicts-with-navigationlink-swipe-back-gesture

import UIKit

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    
    // Allows swipe back gesture after hiding standard navigation bar with .navigationBarHidden(true).
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        viewControllers.count > 1
    }
    
    // Allows interactivePopGestureRecognizer to work simultaneously with other gestures.
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        viewControllers.count > 1
    }
    
    // Blocks other gestures when interactivePopGestureRecognizer begins (my TabView scrolled together with screen swiping back)
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        viewControllers.count > 1
    }
}

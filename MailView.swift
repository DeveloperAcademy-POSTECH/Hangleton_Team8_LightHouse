//
//  ReportMailView.swift
//  VoiceOver Dictionary
//
//  Created by Ruyha on 2022/10/09.
//
import SwiftUI
import UIKit
import MessageUI

struct MailView: UIViewControllerRepresentable {

    @Binding var isShowing: Bool
    @Binding var result: Result<MFMailComposeResult, Error>?

    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {

        @Binding var isShowing: Bool
        @Binding var result: Result<MFMailComposeResult, Error>?

        init(isShowing: Binding<Bool>,
             result: Binding<Result<MFMailComposeResult, Error>?>) {
            _isShowing = isShowing
            _result = result
        }

        func mailComposeController(_ controller: MFMailComposeViewController,
                                   didFinishWith result: MFMailComposeResult,
                                   error: Error?) {
            defer {
                isShowing = false
            }
            guard error == nil else {
                self.result = .failure(error!)
                return
            }
            self.result = .success(result)
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(isShowing: $isShowing,
                           result: $result)
    }
/*
 compseVC.setToRecipients(["본 메일을 전달받을 이메일주소"])
           compseVC.setSubject("메시지제목")
           compseVC.setMessageBody("메시지컨텐츠", isHTML: false)
 */
    func makeUIViewController(context: UIViewControllerRepresentableContext<MailView>) -> MFMailComposeViewController {
        let vc = MFMailComposeViewController()
        vc.mailComposeDelegate = context.coordinator
        vc.setToRecipients(["VoiceOverDictionaryReport@gmail.com"])
        vc.setSubject("VoiceOverDictionary 버그 신고 및 문의사항")
       // vc.setMessageBody("메시지컨텐츠", isHTML: false)
        //이건 아직 확인 못함
        //비번은 추후 공유하겠습니다.
        return vc
    }

    func updateUIViewController(_ uiViewController: MFMailComposeViewController,
                                context: UIViewControllerRepresentableContext<MailView>) {

    }
}

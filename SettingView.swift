//
//  SettingView.swift
//  VoiceOver Dictionary
//
//  Created by Ruyha on 2022/10/09.
//

import SwiftUI
import MessageUI

struct SettingView: View {
    
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false
    @State private var checkingUseMail: Bool = MFMailComposeViewController.canSendMail()
    
    var body: some View {
        Form {
            NavigationLink(destination: MyWebView(urlToLoad: "https://github.com/DeveloperAcademy-POSTECH/Hangleton_Team8_LightHouse/blob/b9aef33a6cdeb487b96159b678350dc171bd4fc8/License.md").navigationTitle("라이센스")) {
                Label("라이센스", systemImage: "doc.on.clipboard.fill")//
            }
            if checkingUseMail {
                Button(
                    action: {
                        isShowingMailView.toggle()
                    },
                    label: {
                        Label {
                            Text("오류 및 문의 메일 보내기")
                                .foregroundColor(.black)
                        } icon : {
                            Image(systemName: "ladybug.fill")
                        }
                    }
                )
                .sheet(isPresented: $isShowingMailView) {
                    MailView(isShowing: self.$isShowingMailView, result: self.$result)
                }
            }
        }
        .navigationTitle("설정")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

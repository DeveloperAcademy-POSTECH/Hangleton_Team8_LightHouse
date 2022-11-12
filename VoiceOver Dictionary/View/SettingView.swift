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
    
    var body: some View {
        Form {
            NavigationLink(destination: MyWebView(urlToLoad: "https://github.com/DeveloperAcademy-POSTECH/Hangleton_Team8_LightHouse/blob/b9aef33a6cdeb487b96159b678350dc171bd4fc8/License.md").navigationTitle("License".localized)) {
                Label("Lz_License".localized, systemImage: "doc.on.clipboard.fill")//
            }
            //하단 if문은 메일을 보낼 수 있는지 확인하는 코드입니다.
            if MFMailComposeViewController.canSendMail() {
                Button(
                    action: {
                        isShowingMailView.toggle()
                    },
                    label: {
                        Label {
                            Text("Lz_BugMailButton".localized)
                                .foregroundColor(.primary)
                        } icon : {
                            Image(systemName: "ladybug.fill")
                        }
                    }
                )
                .sheet(isPresented: $isShowingMailView) {
                    MailView(isShowing: $isShowingMailView, result: $result)
                }
            }
        }
        .navigationTitle("Lz_Setting".localized)
        .navigationBarTitleDisplayMode(.large)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

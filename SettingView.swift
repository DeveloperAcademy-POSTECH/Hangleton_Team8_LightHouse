//
//  SettingView.swift
//  VoiceOver Dictionary
//
//  Created by Ruyha on 2022/10/09.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        Form {
            NavigationLink(destination: MyWebView(urlToLoad: "https://github.com/yeniful/kko_okk/blob/main/lisence.md").navigationTitle("라이센스")) {
                Label("라이센스", systemImage: "doc.on.clipboard.fill")//
            }
            
            NavigationLink {
                ReportMailView()
            } label : {
                Label("BugReport", systemImage: "ladybug.fill")
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

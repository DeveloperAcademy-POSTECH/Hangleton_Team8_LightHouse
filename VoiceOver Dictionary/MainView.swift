//
//  MainPageView.swift
//  VoiceOver Dictionary
//
//  Created by DongKyu Kim on 2022/10/09.
//

import SwiftUI


struct MainView: View {
//    init() {
//        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 10)!]
//    }
    
    var body: some View {
        NavigationView {
            VStack {
                Divider()
                List {
                    ForEach(Gesture.MainCategory.allCases, id: \.self) { mainCategory in
                        Section(header: Text(mainCategory.rawValue)) {
                            let gesturesInMainCategory = GestureConstance.GestureArray.filter {$0.mainCategory == mainCategory}
                            ForEach(gesturesInMainCategory, id: \.self) { gesture in
                                NavigationLink {
                                    DetailView(gesture: gesture)
                                } label: {
                                    HStack(spacing: 0) {
                                        Text(gesture.title)
                                        Spacer()
                                        Text(gesture.subTitle)
                                            .multilineTextAlignment(.trailing)
                                            .foregroundColor(.gray)
                                    }
                                }
                            }
                        }
                    }
                }
                .navigationBarTitle("VoiceOverDictionary")
            }

        }
    }
}

struct TaskRow: View {
    var body: some View {
        NavigationLink(destination: Text("Detail View")) {
            Text("Sample item")
        }
    }
}


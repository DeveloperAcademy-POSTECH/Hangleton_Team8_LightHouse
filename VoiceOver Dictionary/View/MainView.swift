//
//  MainPageView.swift
//  VoiceOver Dictionary
//
//  Created by DongKyu Kim on 2022/10/09.
//

import SwiftUI


struct MainView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Divider()
                List {
                    ForEach(Constants.MainCategory.allCases, id: \.self) { mainCategory in
                        Section(header: Text(mainCategory.rawValue).accessibility(label: Text(mainCategory.rawValue))) {
                            let gesturesInMainCategory = Constants.GestureArray.filter {$0.mainCategory == mainCategory}
                            ForEach(gesturesInMainCategory, id: \.self) { gesture in
                                NavigationLink {
                                    DetailView(gesture: gesture)
                                } label: {
                                    HStack(spacing: 0) {
                                        Text(gesture.title)
                                            .accessibility(label: Text(gesture.title))
                                        Spacer()
                                        Text(gesture.subTitle)
                                            .accessibility(label: Text(gesture.subTitle))
                                            .multilineTextAlignment(.trailing)
                                            .foregroundColor(.gray)
                                    }
                                }
                            }
                        }
                    }
                }
                .listStyle(InsetGroupedListStyle())
            }
            .navigationBarTitle("VoiceOver Dictionary")
            
            .toolbar {
                Button("Help") {
                    print("Help tapped!")
                }
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


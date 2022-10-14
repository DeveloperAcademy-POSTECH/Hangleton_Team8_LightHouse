//
//  MainPageView.swift
//  VoiceOver Dictionary
//
//  Created by DongKyu Kim on 2022/10/09.
//

import SwiftUI


struct MainView: View {
    @State private var searchText: String
    @State private var gestureList: [Gesture]
    
    init() {
        self._searchText = State(initialValue: "")
        self._gestureList = State(initialValue: Constants.GestureArray)
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Divider()
                List {
                    ForEach(Constants.MainCategory.allCases, id: \.self) { mainCategory in
                        let gesturesInMainCategory = gestureList.filter {$0.mainCategory == mainCategory}
                        if !gesturesInMainCategory.isEmpty {
                            Section(header: Text(mainCategory.rawValue.localized).accessibility(label: Text(mainCategory.rawValue.localized))) {
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
                }
                .listStyle(InsetGroupedListStyle())
                .onChange(of: searchText) { value in
                    if searchText == "" {
                        gestureList = Constants.GestureArray
                    } else {
                        gestureList = Constants.GestureArray.filter { gesture in
                            gesture.title.contains(searchText) || gesture.subTitle.contains(searchText) || gesture.content.contains(searchText)
                        }
                    }
                }
            }
            .navigationBarTitle("VoiceOver Dictionary")
            .toolbar {
                
                NavigationLink {
                    SettingView()
                } label: {
                    HStack(alignment:.bottom,spacing: 1){
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(.primary)
                            .accessibility(label: Text("Lz_Setting".localized))
                    }
                }
            }
            .searchable(text: $searchText)
        }
    }
}


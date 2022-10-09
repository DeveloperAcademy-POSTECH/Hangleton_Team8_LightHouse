//
//  ContentView.swift
//  VoiceOver Dictionary
//
//  Created by 이가은 on 2022/10/09.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
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
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


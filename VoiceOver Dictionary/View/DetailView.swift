//
//  DetailView.swift
//  VoiceOver Dictionary
//
//  Created by 이가은 on 2022/10/09.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let gesture: Gesture
    
    var body: some View {
        
        
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 0) {
                    Text(gesture.title)
                        .fontWeight(.bold)
                        .font(.title)
                        .accessibility(label: Text(gesture.title))
                        .padding(.vertical, 28)
                    Spacer()
                }
                .contentShape(Rectangle())
                
                HStack(spacing: 0) {
                    Text("기본설명")
                        .fontWeight(.semibold)
                        .font(.headline)
                        .accessibility(label: Text("기본설명"))
                        .padding(.bottom, 8)
                    Spacer()
                }
                .contentShape(Rectangle())
                
                HStack(spacing: 0) {
                    Text(gesture.subTitle)
                        .font(.body).foregroundColor(.gray)
                        .accessibility(label: Text(gesture.subTitle))
                        .padding(.bottom, 28)
                    Spacer()
                }
                .contentShape(Rectangle())
                
                HStack(spacing: 0) {
                    Text("상세설명")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .accessibility(label: Text("상세설명"))
                        .padding(.bottom, 8)
                    Spacer()
                }
                .contentShape(Rectangle())
                
                HStack(spacing: 0) {
                    Text(gesture.content)
                        .font(.body)
                        .foregroundColor(.gray)
                        .accessibility(label: Text(gesture.content))
                        .lineSpacing(8)
                        .padding(.bottom, 28)
                    Spacer()
                }
                .contentShape(Rectangle())
                
                if let image = UIImage(named: gesture.imageName) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(10)
                        .accessibility(label: Text(gesture.title))
                        .padding(.top, 20)
                }
                Spacer()
            }
            .padding(.bottom, 20)
            .padding(.horizontal, 16)
        }
        .navigationBarItems(leading: Button(action:{self.presentationMode.wrappedValue.dismiss()}){
            Image(systemName: "chevron.left")
            Text("뒤로")
        })
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle(Text(""), displayMode: .inline)
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(gesture: Gesture(mainCategory: .convenienceFeatures, title: "보이스오버를 시작하기", subTitle: "보이스오버를 켜거나 끄는 방법", content: "1번, 시리를 호출한 후 “보이스 오버 켜줘”라고 말할 시 보이스 오버 기능을 사용하실 수 있습니다. 다시 끄고 싶은 경우에는 시리를 호출한 후 “보이스 오버 꺼줘”라고 말해보세요.\n2번, 설정 앱에서 “손쉬운 사용”으로 이동 후 보이스오버 화면으로 이동하면, 보이스오버를 켜고 끌 수 있습니다.\n3번, 설정 앱에서 “손쉬운 사용”으로 이동 후 “손쉬운 사용 단축키”에서 보이스오버를 단축키로 설정할 수 있습니다. 설정 후에 홈버튼이 없는 기종의 경우 전원 버튼을 삼중 클릭하면 보이스오버를 끄고 킬 수 있습니다. 홈버튼이 있는 기종의 경우에는 홈 버튼을 삼중 클릭하세요.", imageName: "startVoiceOver"))
    }
}

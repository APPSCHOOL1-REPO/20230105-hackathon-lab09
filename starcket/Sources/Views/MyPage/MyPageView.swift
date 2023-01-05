//
//  MyPageView.swift
//  starcket
//
//  Created by geonhyeong on 2023/01/05.
//

import SwiftUI

struct MyPageView: View {
    @State var faceIDToggle: Bool = false
    @State var darkmodeToggle: Bool = false
    @State var pushNotiToggle: Bool = false
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    MoreView()
                } label: {
                    Text("hi")
                    
                }
                Section (header: Text("Setting") ) {
                    HStack{
                        Text("Face ID")
                        Toggle(isOn: $faceIDToggle) { }
                    }
                    HStack {
                        Text("다크 모드")
                        Toggle(isOn: $darkmodeToggle) { }
                    }//hstack
                    HStack {
                        Text("푸시 알림")
                        Toggle(isOn: $pushNotiToggle) { }
                    }//hstack
                    
                    NavigationLink {
                        
                    } label: {
                        Text("프리미엄 구매")
                    }
                } // setting section
                
                Section (header: Text("Account") ) {
                    NavigationLink {
                        
                    } label: {
                        Text("회원정보 수정")
                    }
                    //로그아웃 -> alert 로그아웃 하시겠습니까?
                    Button {
                        
                    } label: {
                        Text("로그아웃")
                        
                    }
                } // setting section
                
                Section(header: Text("Other")) {
                    NavigationLink {
                        MoreView()
                    } label: {
                        Text("기타")
                    }

                }


            }
        }
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}

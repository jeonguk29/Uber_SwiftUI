//
//  MainVIew.swift
//  UberSwiftUITutorial
//
//  Created by 정정욱 on 2023/10/19.
//

import SwiftUI

struct HomeView: View {
    @State private var showLocationSearchView: Bool = false // 처음 검색뷰 비활성화
    
    var body: some View {
        ZStack(alignment: .top){
            UberMapViewRepresentable()
                .ignoresSafeArea()
            if showLocationSearchView{
                LocationSearchView() // 사용자의 터치를 받기전 보여줄 화면
            }else{
                LocationSearchActivationView()
                    .padding(.vertical, 72)
                    .onTapGesture { // View에 터치를 감지할때
                        withAnimation(.spring()) {
                            showLocationSearchView.toggle()
                        }
                    }
            }
            MapViewActionButton(showLocationSearchView: $showLocationSearchView)
                .padding(.leading)
                .padding(.top, 4)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

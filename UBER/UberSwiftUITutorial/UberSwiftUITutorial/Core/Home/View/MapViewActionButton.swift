//
//  MapViewActionButton.swift
//  UberSwiftUITutorial
//
//  Created by 정정욱 on 10/21/23.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var showLocationSearchView: Bool
    // 부모 View에 있는 property를 사용하기 위해 @Binding를 사용
    
    var body: some View {
        Button {
            // 눌렸을때 동작
            if showLocationSearchView{
                withAnimation(.spring()) {
                    showLocationSearchView = false
                }
            }
        } label: {
            Image(systemName: showLocationSearchView ? "arrow.left" : "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading) // 너비 최대로 맨 왼쪽 정렬

    }
}

struct MapViewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButton(showLocationSearchView: .constant(true))
    }
}

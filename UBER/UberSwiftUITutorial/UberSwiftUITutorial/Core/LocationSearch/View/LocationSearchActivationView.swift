//
//  LocationSearchActivationView.swift
//  UberSwiftUITutorial
//
//  Created by 정정욱 on 10/21/23.
//

import Foundation

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        HStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 8, height: 8)
                .padding(.horizontal)
            Text("어디로 갈까요?")
                .foregroundColor(Color(.darkGray))
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 64,height: 50) // 현재 장치의 화면 너비에서 64포인트(또는 다른 단위)를 뺀 값을 View의 너비로 설정 오토레이아웃 개념 
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(color: Color.black, radius: 6)
        )
    }
}

struct LocationSearchActivationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchActivationView()
    }
}

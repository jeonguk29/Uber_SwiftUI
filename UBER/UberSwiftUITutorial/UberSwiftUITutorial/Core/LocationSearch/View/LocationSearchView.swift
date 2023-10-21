//
//  LocationSearchView.swift
//  UberSwiftUITutorial
//
//  Created by 정정욱 on 10/21/23.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText: String = ""
    @State private var destinationLocationText: String = ""
    var body: some View {
        VStack{
            // header view
            HStack{
                VStack{
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)
                    Rectangle()
                        .fill(Color(.black))
                        .frame(width: 6, height: 6)
                }
                VStack{
                    TextField("출발지 입력", text: $startLocationText)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                        .padding(.trailing)
                    TextField("어디로 갈까요?", text: $destinationLocationText)
                        .frame(height: 32)
                        .background(Color(.systemGray4))
                        .padding(.trailing)
                }
            }
            .padding(.horizontal)
            .padding(.top,64)
            Divider()
                .padding(.vertical)

            // list view
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading){
                    ForEach(0..<10) { index in
                        LocationSearchResultCell()
                        // 더미 데이터 셀 테스트 출력
                    }
                }
            }
        }
        .background(.white)
    }
}

struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView()
    }
}

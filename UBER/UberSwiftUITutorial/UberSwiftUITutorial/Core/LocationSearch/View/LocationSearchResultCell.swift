//
//  LocationSearchResultCell.swift
//  UberSwiftUITutorial
//
//  Created by 정정욱 on 10/21/23.
//

import SwiftUI

struct LocationSearchResultCell: View {
    var body: some View {
        HStack{
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .accentColor(.white)
                .frame(width: 40, height: 40)
            VStack(alignment: .leading,spacing: 4){
                Text("Starbucks Coffee.")
                    .font(.body)
                Text("123 main street, california state.")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                Divider()
            }
            .padding(.trailing,8) // 이미지와 간격
            .padding(.vertical,8) // 위, 아래 간격
        }
        .padding(.leading)
    }
}

struct LocationSearchResultCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchResultCell()
    }
}

//
//  MainVIew.swift
//  UberSwiftUITutorial
//
//  Created by 정정욱 on 2023/10/19.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

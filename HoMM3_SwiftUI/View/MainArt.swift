//
//  MainArt.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 28.08.22.
//

import SwiftUI

struct MainArt: View {
    var body: some View {
        ZStack{
            Image("MainArt")
                .resizable()
                .frame(height: 230)
                .cornerRadius(20)
                .clipShape(Circle())
                .padding()
                .overlay(Circle().stroke(Color.yellow, lineWidth: 3))
                .shadow(radius: 30)
        }
    }
}

struct MainArt_Previews: PreviewProvider {
    static var previews: some View {
        MainArt()
    }
}

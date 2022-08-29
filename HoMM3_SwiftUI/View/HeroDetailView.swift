//
//  HeroDetailView.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 29.08.22.
//

import SwiftUI

struct HeroDetailView: View {
    @EnvironmentObject var mainCat: MainCategory
    var hero : Hero
    var body: some View {
        ZStack {
            HStack {
                Image(hero.imageName)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                VStack {
                    Text(hero.name)
                        .padding()
                    Text(hero.heroClass)
                }
                Spacer()
            }
        }
    }
}

struct HeroDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetailView(hero: MainCategory().heroes[0])
            .environmentObject(MainCategory())
    }
}

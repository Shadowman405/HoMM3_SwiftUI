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
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    Image(hero.imageName)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding()
                    Spacer()
                }
                HStack {
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("Hero class: ")
                            Text(" - " + hero.heroClass)
                            Text("Hero speciality: ")
                            Text(" - " + hero.heroSpec)
                        }
                        .padding()
                        
                        VStack(alignment: .leading) {
                            Text("Hero skills: ")
                            Text(" - " + hero.heroFirstSkill)
                            Text(" - " + (hero.heroSecondSkill ?? ""))

                        }
                        .padding()
                        VStack{
                            Text("Information about \(hero.name): ")
                                .font(.body)
                            Text(hero.heroDescription)
                        }
                    }
                    Spacer()
                }

                Spacer()
            }
            .navigationTitle(hero.name)
        }
    }
}

struct HeroDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetailView(hero: MainCategory().heroes[0])
            .environmentObject(MainCategory())
    }
}

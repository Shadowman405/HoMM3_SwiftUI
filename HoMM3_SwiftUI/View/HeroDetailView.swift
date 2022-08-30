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
        ScrollView {
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
                                .font(.title2)
                            Text(" - " + hero.heroClass)
                            Text("Hero speciality: ")
                                .font(.title2)
                            Text(" - " + hero.heroSpec)
                        }
                        .padding()
                        
                        VStack(alignment: .leading) {
                            Text("Hero skills: ")
                                .font(.title2)
                            Text(" - " + hero.heroFirstSkill)
                            Text(" - " + (hero.heroSecondSkill ?? ""))

                        }
                        .padding()
                        VStack{
                            Text("Information about \(hero.name): ")
                                .font(.title2)
                            Text(hero.heroDescription)
                                .font(.callout)
                                .offset(x:5)
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

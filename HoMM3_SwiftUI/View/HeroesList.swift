//
//  HeroesList.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 29.08.22.
//

import SwiftUI

struct HeroesList: View {
    @EnvironmentObject var mainCat: MainCategory
    
    @State private var searchText = ""
    
    var body: some View {
            List{
                //Text("Heroes")
                ForEach(searchResults) { hero in
                    ZStack {
                        HStack{
                            Image(hero.imageName)
                                .clipShape(Circle())
                                .shadow(color: .orange, radius: 10)
                            Text(hero.name)
                            
                            Spacer()
                            Text("Class: \(hero.heroClass)")
                                .offset(x: -20)
                        }
                        NavigationLink {
                            HeroDetailView(hero: hero)
                        } label: {
                            Text("")
                        }
                    }
            }
                //.listRowBackground(Color.blue)
        }
            .navigationTitle("Heroes")
            .searchable(text: $searchText)
    }
    
    var searchResults: [Hero] {
        if searchText.isEmpty {
            return mainCat.heroes
        } else {
            return mainCat.heroes.filter { $0.name.contains(searchText) }
        }
    }
}

struct HeroesList_Previews: PreviewProvider {
    static var previews: some View {
        HeroesList()
            .environmentObject(MainCategory())
    }
}

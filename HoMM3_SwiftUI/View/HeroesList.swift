//
//  HeroesList.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 29.08.22.
//

import SwiftUI

struct HeroesList: View {
    @EnvironmentObject var mainCat: MainCategory
    
    var body: some View {
            List{
                ForEach(mainCat.heroes) { hero in
                    HStack{
                        Image(hero.imageName)
                        Text(hero.name)
                        
                        Spacer()
                        Text("Class: \(hero.heroClass)")
                    }
                }
        }
    }
}

struct HeroesList_Previews: PreviewProvider {
    static var previews: some View {
        HeroesList()
            .environmentObject(MainCategory())
    }
}

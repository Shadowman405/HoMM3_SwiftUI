//
//  SpellDetailsView.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 30.08.22.
//

import SwiftUI

struct SpellDetailsView: View {
    @EnvironmentObject var mainCat: MainCategory
    var spell : Spell
    
    var body: some View {
        VStack {
            HStack {
                Image(spell.imageName)
                Text(spell.name)
            }
        }
        .navigationTitle(spell.name)
    }
}

struct SpellDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SpellDetailsView(spell: MainCategory().spells[0])
            .environmentObject(MainCategory())
    }
}

//
//  SpellList.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 30.08.22.
//

import SwiftUI

struct SpellList: View {
    @EnvironmentObject var mainCat: MainCategory
    
    var body: some View {
        List {
            ForEach(mainCat.spells) { spell in
                HStack {
                    Image(spell.imageName)
                        .frame(width: 60, height:50)
                    Text(spell.name)
                    Spacer()
                    Text("   Spell Level :\(spell.spellLevel)")
                }
            }
        }
    }
}

struct SpellList_Previews: PreviewProvider {
    static var previews: some View {
        SpellList()
            .environmentObject(MainCategory())
    }
}

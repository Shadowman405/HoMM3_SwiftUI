//
//  SpellList.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 30.08.22.
//

import SwiftUI

struct SpellList: View {
    @EnvironmentObject var mainCat: MainCategory
    
    @State private var selectedSchool = MagicSchool.FireMagic
    var schools = ["Air Magic", "Water Magic", "Earth Magic", "Fire Magic", "All schools"]
    
    var body: some View {
        Picker("Choose Magic School", selection: $selectedSchool) {
            ForEach(schools, id: \.self){
                Text($0)
            }
        }
        //.pickerStyle(SegmentedPickerStyle())
        
        List {
            ForEach(mainCat.spells) { spell in
                ZStack {
                    HStack {
                        Image(spell.imageName)
                            .frame(width: 60, height:50)
                        Text(spell.name)
                        Spacer()
                        Text("   Spell Level :\(spell.spellLevel)")
                            .offset(x: -20)
                        
                    }
                    NavigationLink {
                        SpellDetailsView(spell: spell)
                    } label: {
                        Text("")
                    }
                }
            }
        }
        .navigationTitle("Spells")
    }
}

struct SpellList_Previews: PreviewProvider {
    static var previews: some View {
        SpellList()
            .environmentObject(MainCategory())
    }
}

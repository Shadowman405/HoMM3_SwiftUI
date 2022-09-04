//
//  SpellList.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 30.08.22.
//

import SwiftUI

struct SpellList: View {
    @EnvironmentObject var mainCat: MainCategory
    
    @State private var selectedSchool = MagicSchool.AllSchools
    
    var schools = [MagicSchool.FireMagic , MagicSchool.AirMagic, MagicSchool.WaterMagic , MagicSchool.EarthMagic, MagicSchool.AllSchools]
    
    var body: some View {
        Text("Select Magic School")
            .font(.title3)
        Picker("Choose Magic School", selection: $selectedSchool) {
            ForEach(schools, id: \.self){ school in
                if school == .EarthMagic{
                    Text("Earth magic")
                } else if school == .AirMagic {
                    Text("Air Magic")
                } else if school == .WaterMagic {
                    Text("Water Magic")
                } else if school == .FireMagic {
                    Text("Fire Magic")
                } else {
                    Text("All Schools")
                }
            }
        }
        //.pickerStyle(Menu())
        
        List {
            ForEach(searchResults) { spell in
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
    
    var searchResults: [Spell] {
        if selectedSchool == .FireMagic {
            return mainCat.spells.filter{
                $0.spellSchool == .FireMagic
            }
        } else if selectedSchool == .WaterMagic{
            return mainCat.spells.filter {
                $0.spellSchool == .WaterMagic
            }
        } else if selectedSchool == .AirMagic{
            return mainCat.spells.filter {
                $0.spellSchool == .AirMagic
            }
        } else if selectedSchool == .EarthMagic {
            return mainCat.spells.filter {
                $0.spellSchool == .EarthMagic
            }
        } else if selectedSchool == .AllSchools {
            return mainCat.spells

//            return mainCat.spells.filter {
//                $0.spellSchool == .AllSchools
//            }
        } else {
            return mainCat.spells
        }
    }
}

struct SpellList_Previews: PreviewProvider {
    static var previews: some View {
        SpellList()
            .environmentObject(MainCategory())
    }
}

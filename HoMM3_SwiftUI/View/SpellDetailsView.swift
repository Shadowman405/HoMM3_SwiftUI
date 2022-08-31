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
        ScrollView {
            VStack {
                                    
                HStack {
                    Image(spell.imageName)
                        .frame(width: 100 , height: 100)
                    Spacer()
                }
                .padding()
                
                
                HStack{
                    VStack(alignment: .leading) {
                        Text("Spell level: \(spell.spellLevel)")
                            .padding()
                        HStack{
                        if spell.spellSchool == .WaterMagic {
                            Text("Spell School: Water Magic").padding()
                            Image("School_of_Water_Magic")
                        } else if spell.spellSchool == .FireMagic {
                            Text("Spell School").padding()
                            Image("School_of_Fire_Magic")
                        } else if spell.spellSchool == .AirMagic {
                            Text("Spell School: Air Magic").padding()
                            Image("School_of_Air_Magic")
                        } else {
                            Text("Spell School: Earth Magic").padding()
                            Image("School_of_Earth_Magic")
                            }
                            
                            
                        }
                        
                        Text(spell.description)
                            .padding()
                    }
                }
            }
            .navigationTitle(spell.name)
        }
    }
}

struct SpellDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SpellDetailsView(spell: MainCategory().spells[0])
            .environmentObject(MainCategory())
    }
}

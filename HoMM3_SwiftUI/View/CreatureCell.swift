//
//  CreatureCell.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 28.08.22.
//

import SwiftUI

struct CreatureCell: View {
    @EnvironmentObject var mainCat: MainCategory
    var creature: Creature
    
    var body: some View {
        ZStack {
            Color(.brown)
            
            HStack {
                Image(creature.imgName)
                    .resizable()
                    .frame(width: 100,height: 170)
                
                VStack(alignment: .leading) {
                    Text(creature.name)
                        .offset(x: 30, y: 0)
                        .foregroundColor(.white)
                    Divider()
                    Text("Attack: \(creature.attack)")
                        .foregroundColor(.white)
                    Text("Defence: \(creature.defence)")
                        .foregroundColor(.white)
                    Text("Damage: \(creature.damage)")
                        .foregroundColor(.white)
                    Text("Health: \(creature.health)")
                        .foregroundColor(.white)
                    Text("Speed: \(creature.speed)")
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct CreatureCell_Previews: PreviewProvider {
    static var previews: some View {
        let creatures = MainCategory().creatures
        
        CreatureCell(creature: creatures[0])
            .environmentObject(MainCategory())
    }
}

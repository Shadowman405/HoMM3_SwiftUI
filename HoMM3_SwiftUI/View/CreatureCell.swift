//
//  CreatureCell.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 28.08.22.
//

import SwiftUI

struct CreatureCell: View {
    @EnvironmentObject var mainCat: MainCategory
    
    var body: some View {
        ZStack {
            Color(.black)
            
            HStack {
                Image(mainCat.creatures[1].imgName)
                    .resizable()
                    .frame(width: 100,height: 170)
                
                VStack(alignment: .leading) {
                    Text(mainCat.creatures[1].name)
                        .offset(x: 60, y: 0)
                        .foregroundColor(.white)
                    Divider()
                    Text("Attack: \(mainCat.creatures[1].attack)")
                        .foregroundColor(.white)
                    Text("Defence: \(mainCat.creatures[1].defence)")
                        .foregroundColor(.white)
                    Text("Damage: \(mainCat.creatures[1].damage)")
                        .foregroundColor(.white)
                    Text("Health: \(mainCat.creatures[1].health)")
                        .foregroundColor(.white)
                    Text("Speed: \(mainCat.creatures[1].speed)")
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct CreatureCell_Previews: PreviewProvider {
    static var previews: some View {
        CreatureCell()
            .environmentObject(MainCategory())
    }
}

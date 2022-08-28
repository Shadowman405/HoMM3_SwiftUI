//
//  CreatureCell.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 28.08.22.
//

import SwiftUI

struct CreatureCell: View {
    var body: some View {
        ZStack {
            Color(.black)
            
            HStack {
                Image("pikeman")
                    .resizable()
                    .frame(width: 100,height: 170)
                
                VStack(alignment: .leading) {
                    Text("Name: ")
                        .offset(x: 60, y: 0)
                        .foregroundColor(.white)
                    Divider()
                    Text("Attack: ")
                        .foregroundColor(.white)
                    Text("Defence: ")
                        .foregroundColor(.white)
                    Text("Damage: ")
                        .foregroundColor(.white)
                    Text("Health: ")
                        .foregroundColor(.white)
                    Text("Speed: ")
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct CreatureCell_Previews: PreviewProvider {
    static var previews: some View {
        CreatureCell()
    }
}

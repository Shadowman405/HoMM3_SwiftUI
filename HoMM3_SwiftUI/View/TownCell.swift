//
//  TownCell.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 27.08.22.
//

import SwiftUI

struct TownCell: View {
    @EnvironmentObject var townGrid: TownGrid
    var town : Town
    
    var body: some View {
        ZStack {
            VStack {
                Image(town.imageName)
                    .resizable()
                    .clipShape(Rectangle())
                    .cornerRadius(30)
                    .frame(height:220)
            }
            Text(town.name)
                .font(.custom("Snell Roundhand", size: 70))
                .fontWeight(.thin)
                .foregroundColor(.yellow)
        }
    }
}

struct TownCell_Previews: PreviewProvider {
    static var towns = TownGrid().towns
    
    static var previews: some View {
        TownCell(town: towns[0])
            .environmentObject(TownGrid())
    }
}

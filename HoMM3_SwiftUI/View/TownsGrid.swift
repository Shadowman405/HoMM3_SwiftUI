//
//  TownsGrid.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 27.08.22.
//

import SwiftUI

struct TownsGrid: View {
    @ObservedObject var townGrid: TownGrid
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10, alignment: nil)
    ]
    
    var body: some View {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(townGrid.towns){ town in
                        TownCell(town: town)
                    }
                }
            }
            .padding()
            .navigationTitle("Towns")
    }
}

struct TownsGrid_Previews: PreviewProvider {
    static var previews: some View {
        TownsGrid(townGrid: TownGrid())
    }
}

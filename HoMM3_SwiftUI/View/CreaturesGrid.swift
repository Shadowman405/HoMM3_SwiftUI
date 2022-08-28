//
//  CreaturesGrid.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 28.08.22.
//

import SwiftUI

struct CreaturesGrid: View {
    @EnvironmentObject var mainCat: MainCategory
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns){
                ForEach(mainCat.creatures){ creature in
                    CreatureCell(creature: creature)
                        .cornerRadius(30)
                        .padding()
                }
            }
        }
    }
}

struct CreaturesGrid_Previews: PreviewProvider {
    static var previews: some View {
        CreaturesGrid()
            .environmentObject(MainCategory())
    }
}

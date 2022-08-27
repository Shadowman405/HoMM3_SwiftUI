//
//  TownsGrid.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 27.08.22.
//

import SwiftUI

struct TownsGrid: View {
    @EnvironmentObject var townGrid: TownGrid
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10, alignment: nil)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(townGrid.towns){ town in
                        ZStack {
                            VStack {
                                Image(town.imageName)
                                    .resizable()
                                    .clipShape(Rectangle())
                                    .cornerRadius(30)
                                    .frame(height:300)
                            }
                            Text(town.name)
                                .font(.title)
                                .foregroundColor(.yellow)
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("Towns")
        }
    }
}

struct TownsGrid_Previews: PreviewProvider {
    static var previews: some View {
        TownsGrid()
            .environmentObject(TownGrid())
    }
}

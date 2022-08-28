//
//  CategoriesList.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 27.08.22.
//

import SwiftUI

struct CategoriesList: View {
    @EnvironmentObject var mainCat: MainCategory
    @EnvironmentObject var townGrid: TownGrid
    
    var body: some View {
        NavigationView {
            VStack {
                MainArt()
                
                List{
                    ForEach(mainCat.categories){ category in
                        HStack {
                            Image(category.imageName)
                                .clipShape(Circle())
                                .frame(width: 50, height: 50)
                            Text(category.name)
                                .font(.title2)
                            
                            if category == mainCat.categories[0] {
                                NavigationLink {
                                    TownsGrid(townGrid: townGrid)
                                } label: {
                                    Text("")
                                }
                            }
                        }
                        
                    }
                }
                .navigationTitle("Heroes 3 Wiki")
            }
        }
    }
}

struct CategoriesList_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesList()
            .environmentObject(MainCategory())
            .environmentObject(TownGrid())
    }
}

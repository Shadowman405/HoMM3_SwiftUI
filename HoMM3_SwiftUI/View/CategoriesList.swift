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
                            } else if category == mainCat.categories[2] {
                                NavigationLink {
                                    CreaturesGrid(mainCat: _mainCat)
                                } label: {
                                    Text("")
                                }
                            } else if category == mainCat.categories[1] {
                                NavigationLink {
                                    HeroesList(mainCat: _mainCat)
                                } label: {
                                    Text("")
                                }
                            } else if category == mainCat.categories[3] {
                                NavigationLink {
                                    SpellList(mainCat: _mainCat)
                                } label: {
                                    Text("")
                                }
                            } else if category == mainCat.categories[4] {
                                NavigationLink {
                                    ArtifactsList(mainCat: _mainCat)
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

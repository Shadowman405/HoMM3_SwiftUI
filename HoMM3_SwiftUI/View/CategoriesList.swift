//
//  CategoriesList.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 27.08.22.
//

import SwiftUI

struct CategoriesList: View {
    @EnvironmentObject var mainCat: MainCategory
    
    var body: some View {
        NavigationView {
            List{
                ForEach(mainCat.categories){ category in
                    HStack {
                        Image(category.imageName)
                            .clipShape(Circle())
                            .frame(width: 50, height: 50)
                        Text(category.name)
                            .font(.title2)
                    }
                    
                }
            }
            .navigationTitle("Main Categories")
        }
    }
}

struct CategoriesList_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesList()
            .environmentObject(MainCategory())
    }
}

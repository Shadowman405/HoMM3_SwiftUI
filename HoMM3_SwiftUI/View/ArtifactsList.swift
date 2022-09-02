//
//  ArtifactsList.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 2.09.22.
//

import SwiftUI

struct ArtifactsList: View {
    @EnvironmentObject var mainCat: MainCategory
    
    var body: some View {
        List {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ArtifactsList_Previews: PreviewProvider {
    static var previews: some View {
        ArtifactsList()
            .environmentObject(MainCategory())
    }
}

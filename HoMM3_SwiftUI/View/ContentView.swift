//
//  ContentView.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 27.08.22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        CategoriesList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MainCategory())
            .environmentObject(TownGrid())
    }
}

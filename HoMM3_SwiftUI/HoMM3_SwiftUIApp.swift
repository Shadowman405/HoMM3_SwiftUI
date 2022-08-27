//
//  HoMM3_SwiftUIApp.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 27.08.22.
//

import SwiftUI

@main

struct HoMM3_SwiftUIApp: App {
    @StateObject private var mainCat = MainCategory()
    @StateObject private var townsGrid = TownGrid()

    
    var body: some Scene {
        WindowGroup {
            CategoriesList()
                .environmentObject(mainCat)
                .environmentObject(townsGrid)
        }
    }
}

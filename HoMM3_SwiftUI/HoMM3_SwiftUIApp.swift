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
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(mainCat)
        }
    }
}

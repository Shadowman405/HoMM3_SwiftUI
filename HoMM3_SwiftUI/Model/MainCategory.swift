//
//  MainCategory.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 27.08.22.
//

import Foundation
import SwiftUI

final class MainCategory: ObservableObject {
    @Published var categories: [Category] = getAllCategories()
}

struct Category: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    
    var imageName: String
}

func getAllCategories() -> [Category] {
    let categories = [
        Category(id: 0, name: "Towns", imageName: "Town_portrait_Castle_small"),
        Category(id: 1, name: "Heroes", imageName: "Heroes_ui_icon"),
        Category(id: 2, name: "Creatures",  imageName: "Creatures_ui_icon"),
        Category(id: 3, name: "Magic",  imageName: "Spells_ui_icon"),
        Category(id: 4, name: "Artifacts",  imageName: "Artifacts_ui_icon")
    ]
    
    return categories
}

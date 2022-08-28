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
    @Published var creatures: [Creature] = getAllCreature()

}

struct Category: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    
    var imageName: String
}

struct Creature: Hashable, Codable, Identifiable  {
    var id: Int
    var imgName: String
    var name: String
    var attack: String
    var defence: String
    var damage: String
    var health: String
    var speed: String
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

func getAllCreature() -> [Creature] {
    let creatures = [
        Creature(id: 0, imgName: "pikeman", name: "Pikeman", attack: "4", defence: "5", damage: "1-3", health: "10", speed: "4"),
        Creature(id: 1, imgName: "halberdier", name: "Halberdier", attack: "6", defence: "5", damage: "2-3", health: "10", speed: "5"),
        Creature(id: 2, imgName: "bowman", name: "Archer", attack: "6", defence: "3", damage: "2-3", health: "10", speed: "4"),
        Creature(id: 3, imgName: "marksman", name: "Marksman", attack: "6", defence: "3", damage: "2-3", health: "10", speed: "6")
    ]
    
    return creatures
}

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
    @Published var heroes: [Hero] = getAllHeroes()
}

struct Category: Hashable,Identifiable {
    var id: Int
    var name: String
    
    var imageName: String
}

struct Creature: Hashable,Identifiable  {
    var id: Int
    var imgName: String
    var name: String
    var attack: String
    var defence: String
    var damage: String
    var health: String
    var speed: String
}

struct Hero: Hashable,Identifiable {
    var id: Int
    var imageName: String
    var name: String
    var heroClass: String
    var heroSpec: String
    var heroFirstSkill: String
    var heroSecondSkill: String?
    var heroDescription: String
}

struct Spell: Hashable,Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var description: String
    var spellSchool: MagicSchool
}

enum MagicSchool {
    case AllSchools
    case AirMagic
    case FireMagic
    case WaterMagic
    case EarthMagic
}

//MARK: - Categories

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

//MARK: - Creatures

func getAllCreature() -> [Creature] {
    let creatures = [
        Creature(id: 0, imgName: "pikeman", name: "Pikeman", attack: "4", defence: "5", damage: "1-3", health: "10", speed: "4"),
        Creature(id: 1, imgName: "halberdier", name: "Halberdier", attack: "6", defence: "5", damage: "2-3", health: "10", speed: "5"),
        Creature(id: 2, imgName: "bowman", name: "Archer", attack: "6", defence: "3", damage: "2-3", health: "10", speed: "4"),
        Creature(id: 3, imgName: "marksman", name: "Marksman", attack: "6", defence: "3", damage: "2-3", health: "10", speed: "6")
    ]
    
    return creatures
}

//MARK: - Heroes

func getAllHeroes() -> [Hero] {
    let heroesArray = [
        Hero(id: 0, imageName: "Hero_Christian", name: "Christian", heroClass: "Knight", heroSpec: "Ballista", heroFirstSkill: "Basic Leadership", heroSecondSkill: "Basic Artillery", heroDescription: "Christian was always more of a frontiersman than a Knight, having set foot in nearly every part of Enroth before finally settling into military service in Erathia. Though a wanderer and a bit of a dreamer, his battlefield tactics are feared throughout the world."),
        Hero(id: 1, imageName: "Hero_Edric", name: "Edric", heroClass: "Knight", heroSpec: "Griffins", heroFirstSkill: "Basic Leadership", heroSecondSkill: "Basic Armorer", heroDescription: "Edric's great grandfather was the first man in Erathia to domesticate and train a wild Griffin. Now, Edric's family maintains Erathia's largest Griffin breeding grounds for use in the King's armies.")
    ]
    
    return heroesArray
}

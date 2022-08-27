//
//  Towns.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 27.08.22.
//

import Foundation

final class TownGrid: ObservableObject {
    @Published var towns: [Town] = getAllTowns()
}

struct Town: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
}


func getAllTowns() -> [Town] {
    let towns = [
        Town(id: 0, name: "Castle", imageName: "Castle-in"),
        Town(id: 1, name: "Rampart", imageName: "Rampart-in"),
        Town(id: 2, name: "Tower", imageName: "Tower-in"),
        Town(id: 3, name: "Inferno", imageName: "Inferno-in"),
        Town(id: 4, name: "Necropolis", imageName: "Necropolis-in"),
        Town(id: 5, name: "Dungeon", imageName: "Dungeon-in"),
        Town(id: 6, name: "Stronghold", imageName: "Stronghold-in"),
        Town(id: 7, name: "Fortress", imageName: "Fortress-in"),
        Town(id: 8, name: "Conflux", imageName: "Conflux-in")
    ]
    
    return towns
}


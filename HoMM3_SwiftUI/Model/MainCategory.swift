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
    @Published var spells: [Spell] = getAllSpells()
    @Published var artifacts: [Artifact] = getAllArtifacts()
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

struct Artifact: Hashable,Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var slot: String
    var effect: String
    var description: String
}

struct Spell: Hashable,Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var description: String
    var spellLevel: Int
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
        Hero(id: 1, imageName: "Hero_Edric", name: "Edric", heroClass: "Knight", heroSpec: "Griffins", heroFirstSkill: "Basic Leadership", heroSecondSkill: "Basic Armorer", heroDescription: "Edric's great grandfather was the first man in Erathia to domesticate and train a wild Griffin. Now, Edric's family maintains Erathia's largest Griffin breeding grounds for use in the King's armies."),
        Hero(id: 2, imageName: "Hero_Orrin", name: "Orrin", heroClass: "Knight", heroSpec: "Archery", heroFirstSkill: "Basic Leadership", heroSecondSkill: "Basic Archery", heroDescription: "Orrin trained with one of Erathia's best siege tacticians during his early military service. Any archers under his command learn quickly to shoot at targets behind obstacles."),
        Hero(id: 3, imageName: "Hero_Sorsha", name: "Sorsha", heroClass: "Knight", heroSpec: "Swordsmen", heroFirstSkill: "Basic Leadership", heroSecondSkill: "Basic Offense", heroDescription: "Following Queen Catherine's example, Sorsha joined the ranks of the Erathian Military, quickly proving herself as a master of swordplay. She was granted her first command shortly after the Kreegans arrived in Erathia."),
        Hero(id: 4, imageName: "Hero_Sylvia", name: "Sylvia", heroClass: "Knight", heroSpec: "Navigation", heroFirstSkill: "Basic Leadership", heroSecondSkill: "Basic Navigation", heroDescription: "Sylvia spent several years as a Regnan Pirate before realizing that a pirate's life was not for her. She sought a new life in the Erathian Military, and now serves in the Coastal Patrol, fighting off raids from the same pirates she once sailed with."),
        Hero(id: 5, imageName: "Hero_Valeska", name: "Valeska", heroClass: "Knight", heroSpec: "Archers", heroFirstSkill: "Basic Leadership", heroSecondSkill: "Basic Archery", heroDescription: "Valeska became known as a master marksman when she first served in the Erathian military. Now she not only commands her own forces, but spends time personally training her Crossbow troops as well."),
        Hero(id: 6, imageName: "Hero_Tyris", name: "Tyris", heroClass: "Knight", heroSpec: "Cavaliers", heroFirstSkill: "Basic Leadership", heroSecondSkill: "Basic Tactics", heroDescription: "Tyris rose quickly through the ranks of the Erathian Cavalry, not only for her ability to handle a horse, but for her 'sixth sense' regarding mounted strategy and tactics. She has also never lost a joust."),
        Hero(id: 7, imageName: "Hero_Lord_Haart_Knight", name: "Lord Haart", heroClass: "Knight", heroSpec: "Estates", heroFirstSkill: "Basic Leadership", heroSecondSkill: "Basic Estates", heroDescription: "Some have said that Lord Haart's departure from Enroth was due to his ties with a Necromantic cult, but his service to the crown of Erathia has been as spotless as it was to Roland Ironfist before the Succession Wars."),
        Hero(id: 8, imageName: "Hero_Catherine", name: "Catherine", heroClass: "Knight", heroSpec: "Swordsmen", heroFirstSkill: "Basic Leadership", heroSecondSkill: "Basic Offense", heroDescription: "As the reigning queen of Erathia, Catherine continues to wage war to secure her homeland's borders and restablish the peace built by her father. However, support for her position is faltering as the country grows weary of war."),
        Hero(id: 9, imageName: "Hero_Roland", name: "Roland", heroClass: "Knight", heroSpec: "Swordsmen", heroFirstSkill: "Basic Leadership", heroSecondSkill: "Basic Armorer", heroDescription: "Recently freed from the Kreegans, Roland respectfully serves as a general in Erathia's military under his wife Catherine. Someday soon, these conflicts will end, and he and Catherine will return to Enroth. However, both must decide what will happen to the Erathian throne."),
        Hero(id: 10, imageName: "Hero_Sir_Mullich_(HotA)", name: "Sir Mulich", heroClass: "Knight", heroSpec: "Speed", heroFirstSkill: "Advances Leadership", heroSecondSkill: nil, heroDescription: "Generally stoic, Sir Mullich is prone to spasmodic fits of uncoordinated excitement believed to intimidate his troops into working faster."),
        Hero(id: 11, imageName: "Hero_Adela", name: "Adela", heroClass: "Cleric", heroSpec: "Bless", heroFirstSkill: "Basic Wisdom", heroSecondSkill: "Basic Diplomacy", heroDescription: "Adela originally contributed her skills only prior to battles. If she could not convince her commander to avoid a fight, she would at least prepare a blessing for the troops as they entered combat. She was given command of the Whitestone garrison."),
        Hero(id: 12, imageName: "Hero_Adelaide", name: "Adelaide", heroClass: "Cleric", heroSpec: "Frost Ring", heroFirstSkill: "Advanced Wisdom", heroDescription: "Caught at sea during a storm, Adelaide was shipwrecked on the shores of Vori, home of the Snow Elves. She trained with them for some twenty years, and upon her return to Erathia discovered that no time had passed in her absence."),
        Hero(id: 13, imageName: "Hero_Caitlin", name: "Caitlin", heroClass: "Cleric", heroSpec: "Gold", heroFirstSkill: "Basic Wisdom", heroSecondSkill: "Basic Intelligence", heroDescription: "Before she was granted command, Caitlin was considered by some to be possessed by evil spirits. Despite these claims, donations to her church were unsurpassed when she was still in the church's ranks."),
        Hero(id: 14, imageName: "Hero_Cuthbert", name: "Cuthbert", heroClass: "Cleric", heroSpec: "Weakness", heroFirstSkill: "Basic Wisdom", heroSecondSkill: "Basic Estates", heroDescription: "As a young man, Cuthbert toyed with the darker magics, but when his wife died because a spell that he cast had gone awry, he turned to good and has never looked back. His insights to the workings of dark magic give him an edge possessed by no other.")
    ]
    
    return heroesArray
}

//MARK: - Magic

func getAllSpells() -> [Spell] {
    let spellsArray = [
        Spell(id: 0, name: "Bloodlust", imageName: "Bloodlust", description: "Increases the attack skill of target (or all) allied creature for melee attacks.",spellLevel: 1, spellSchool: .FireMagic),
        Spell(id: 1, name: "Cure", imageName: "Cure", description: "Removes all negative spell effects from target (or all) allied troop and heals it for (10/20/30 + (power x 5)) health points.", spellLevel: 1, spellSchool: .WaterMagic),
        Spell(id: 2, name: "Curse", imageName: "Curse", description: "The targeted (or all) enemy unit(s) deliver minimum or reduced damage when attacking.", spellLevel: 1, spellSchool: .FireMagic),
        Spell(id: 3, name: "Dispel", imageName: "Dispel", description: "Removes all spell effects from target allied, enemy or all creatures and the battlefield.", spellLevel: 1, spellSchool: .WaterMagic),
        Spell(id: 4, name: "Bless", imageName: "Bless", description: "Target (or all) allied creature(s) inflict maximum damage (or maximum +1) when they attack.", spellLevel: 1, spellSchool: .WaterMagic),
        Spell(id: 5, name: "Haste", imageName: "Haste", description: "Target (or all) allied troop's speed is increased by 3 (or 5) hexes per turn.", spellLevel: 1, spellSchool: .AirMagic),
        Spell(id: 6, name: "Protection from Fire", imageName: "Protection_from_Fire", description: "Protection from Fire is a 1st level spell in the School of Fire Magic. It reduces damage from fire spells for target allied troop.", spellLevel: 1, spellSchool: .FireMagic),
        Spell(id: 7, name: "Protection from Water", imageName: "Protection_from_Water", description: "Protection from Water is a 1st level spell in the School of Water Magic. It reduces damage from water spells for target allied troop.", spellLevel: 1, spellSchool: .WaterMagic),
        Spell(id: 8, name: "Shield", imageName: "Shield", description: "Shield is a 1st level spell in the School of Earth Magic. It reduces melee damage done to target allied stack or all allied stacks.", spellLevel: 1, spellSchool: .EarthMagic),
        Spell(id: 9, name: "Slow", imageName: "Slow", description: "Slow is a 1st level spell in the School of Earth Magic. It reduces the speed of target enemy stack. It is one of the game's strongest hindering spells. The new speed is rounded down. Additionally, slow counters the haste spell.", spellLevel: 1, spellSchool: .EarthMagic),
        Spell(id: 10, name: "Summon Boat", imageName: "Summon_Boat", description: "The spell may only be cast on the adventure map and next to a shoreline. In order to Summon Boat spell to work, there must be an unoccupied (free) tile to summon the boat. If there are several available tiles, a boat appears at one of the top priority (see the scheme).", spellLevel: 1, spellSchool: .WaterMagic),
        Spell(id: 11, name: "Stone Skin", imageName: "Stone_Skin", description: "Stone Skin is a 1st level spell in the School of Earth Magic. It increases target, allied troop's defense.", spellLevel: 1, spellSchool: .EarthMagic),
        Spell(id: 12, name: "View Air", imageName: "View_Air", description: "View Air is a 1st level spell in the School of Air Magic. It displays noteworthy locations on the view world screen. It does not reveal the position of spell scrolls or Pandora boxes. View Air is a charting adventure spell.", spellLevel: 1, spellSchool: .AirMagic),
        Spell(id: 13, name: "View Earth", imageName: "View_Earth", description: "View Earth is a 1st level spell in the School of Earth Magic. It shows the spots of interest on the view world screen. View Earth is a charting adventure spell.", spellLevel: 1, spellSchool: .EarthMagic),
        Spell(id: 14, name: "Magic Arrow - Air", imageName: "Magic_Arrow", description: "Magic arrow is one of the game's direct damage spellsIn spell book , the magic arrow will belong to the school with the highest secondary magic skill (e.g. earth magic). If a unit has resistance or vulnerability to a certain school, they will transfer to Magic Arrow as well, regardless of the skills of the casting hero.", spellLevel: 1, spellSchool: .AirMagic),
        Spell(id: 15, name: "Magic Arrow - Earth", imageName: "Magic_Arrow", description: "Magic arrow is one of the game's direct damage spellsIn spell book , the magic arrow will belong to the school with the highest secondary magic skill (e.g. earth magic). If a unit has resistance or vulnerability to a certain school, they will transfer to Magic Arrow as well, regardless of the skills of the casting hero.", spellLevel: 1, spellSchool: .EarthMagic),
        Spell(id: 16, name: "Magic Arrow - Fire", imageName: "Magic_Arrow", description: "Magic arrow is one of the game's direct damage spellsIn spell book , the magic arrow will belong to the school with the highest secondary magic skill (e.g. earth magic). If a unit has resistance or vulnerability to a certain school, they will transfer to Magic Arrow as well, regardless of the skills of the casting hero.", spellLevel: 1, spellSchool: .FireMagic),
        Spell(id: 17, name: "Magic Arrow - Water", imageName: "Magic_Arrow", description: "Magic arrow is one of the game's direct damage spellsIn spell book , the magic arrow will belong to the school with the highest secondary magic skill (e.g. earth magic). If a unit has resistance or vulnerability to a certain school, they will transfer to Magic Arrow as well, regardless of the skills of the casting hero.", spellLevel: 1, spellSchool: .WaterMagic),
        Spell(id: 18, name: "Vision - Air", imageName: "Visions", description: "Displays number of monsters in a wandering monster troop and whether or not the troop will offer to join the casting hero's army. Range is equal to power or three, whichever is greater.", spellLevel: 2, spellSchool: .AirMagic),
        Spell(id: 19, name: "Vision - Earth", imageName: "Visions", description: "Displays number of monsters in a wandering monster troop and whether or not the troop will offer to join the casting hero's army. Range is equal to power or three, whichever is greater.", spellLevel: 2, spellSchool: .EarthMagic),
        Spell(id: 20, name: "Vision - Fire", imageName: "Visions", description: "Displays number of monsters in a wandering monster troop and whether or not the troop will offer to join the casting hero's army. Range is equal to power or three, whichever is greater.", spellLevel: 2, spellSchool: .FireMagic),
        Spell(id: 21, name: "Vision - Water", imageName: "Visions", description: "Displays number of monsters in a wandering monster troop and whether or not the troop will offer to join the casting hero's army. Range is equal to power or three, whichever is greater.", spellLevel: 2, spellSchool: .WaterMagic),
        Spell(id: 22, name: "Blind", imageName: "Blind", description: "It makes the blinded creature stack immobile and completely lose its turn to act on combat round. Blind can be removed with Cure and Dispel spells, or it is removed if the creature is attacked in any way or the duration of the spell ends. If Blind is removed from a creature, it will have a chance to act on its turn as it normally would according to its initiative, or if its turn has already passed for the round, it will act immediately.", spellLevel: 2, spellSchool: .FireMagic),
        Spell(id: 23, name: "Death Ripple", imageName: "Death_Ripple", description: "Death Ripple is a 2nd level spell in the School of Earth Magic. It damages all living creatures. Death ripple can only appear in necropolis' mage guild. Additionally, it can be learned from shrine of magic gesture or scholar.", spellLevel: 2, spellSchool: .EarthMagic),
        Spell(id: 24, name: "Disguise", imageName: "Disguise", description: "Disguise is a 2nd level spell in the School of Air Magic. It masks the hero's units on the adventure map from enemy players. Disguise is a reconnaissance adventure spell.", spellLevel: 2, spellSchool: .AirMagic)
    ]
    
    return spellsArray
}


// MARK: - Artifactes

func getAllArtifacts() -> [Artifact] {
    let artsArray = [
        Artifact(id: 0, name: "Cape of Conjuring", imageName: "Artifact_Cape_of_Conjuring", slot: "Cape", effect: "Spell Duration +3", description: "Cape of Conjuring is a treasure class artifact, that is equipped in shoulders slot. When equipped, it increases the duration of hero's spells without fixed duration by 3."),
        Artifact(id: 1, name: "Dragon Wing Tabard", imageName: "Artifact_Dragon_Wing_Tabard", slot: "Cape", effect: "Spell Power +2 \n Knowledge +2", description: "Dragon Wing Tabard is a minor class artifact, that is equipped in shoulders slot.Equipped in the cloak slot, this artifact gives you +2 to both Spell Power and Knowledge."),
        Artifact(id: 2, name: "Vampire's Cowl", imageName: "Artifact_Vampire's_Cowl", slot: "Shoulders", effect: "Worn about the shoulders, this cowl increases hero's necromancy skill by 10% (5% in Horn of the Abyss).", description: "You manage to find a Vampire's resting place during the day, and are able to slay him easily. Just for good measure, you take his cowl."),
        Artifact(id: 3, name: "Surcoat of Counterpoise", imageName: "Artifact_Surcoat_of_Counterpoise", slot: "Shoulders", effect: "Worn about the shoulders, this item increases your magic resistance by 10%.", description: "You've come upon a fight between a Necromancer and a Paladin. The Necromancer blasts the Paladin with a fire bolt, bringing him to his knees. Acting quickly, you slay the evil one before the final blow. The grateful Paladin gives you the cloak that saved him."),
        Artifact(id: 4, name: "Ambassador's Sash", imageName: "Artifact_Ambassador's_Sash", slot: "Shoulders", effect: "Worn about the shoulders, the Ambassador's Sash reduces the cost of surrendering by 10%.", description: "You pause to help a diplomat with a broken axle fix his problem. In gratitude, he gives you a sash with magical properties which he says will - help people see things your way."),
        Artifact(id: 5, name: "Everflowing Crystal Cloak", imageName: "Artifact_Everflowing_Crystal_Cloak", slot: "Shoulders", effect: "When worn, this cloak increases kingdom's crystal production by +1 per day.", description: "Taking shelter from a storm in a small cave, you notice a small patch of crystal in one corner. Curious, you discover that the patch is really a cloak, and when you break a piece off it mysteriously grows back. You decide to take the cloak with you."),
        Artifact(id: 6, name: "Recanter's Cloak", imageName: "Artifact_Recanter's_Cloak", slot: "Shoulders", effect: "While wearing this cloak, neither you nor your opponent will be able to cast level 3 or higher spells during combat.", description: "Responding to the panicked cries of a damsel in distress, you discover a young woman fleeing from a hungry bear. You slay the beast in the nick of time, and the grateful Sorceress weaves a magic cloak from the bear's hide."),
        Artifact(id: 7, name: "Cape of Velocity", imageName: "Artifact_Cape_of_Velocity", slot: "Shoulders", effect: "Worn about the shoulders, this cape increases the combat speed of all hero's creatures by +2.", description: "A brief stop at an improbable rural inn yields an exchange of money, tales, and accidentally, luggage. You find a magical cloak in your new backpack."),
        Artifact(id: 8, name: "Angel Wings", imageName: "Artifact_Angel_Wings", slot: "Shoulders", effect: "Worn about the shoulders, these wings allow you to fly.", description: "Not really wanting to know where the Angel is who belongs to these wings, you take them and quickly depart."),
        Artifact(id: 9, name: "Cloak of the Undead King", imageName: "Artifact_Cloak_of_the_Undead_King", slot: "Shoulders", effect: "For heroes without Necromancy it works the same as expert level Necromancy. If a hero already has Necromancy, the level of the skill determines what type of creatures are resurrected: basic – walking dead; advanced – wights; expert – liches.", description: "You trip over the Cloak of the Undead King, dust it off, and stick it in your pack."),
        Artifact(id: 10, name: "Dragonbone Greaves", imageName: "Artifact_Dragonbone_Greaves", slot: "Feet", effect: "Worn on the feet, this item increases hero's knowledge and power skills by +1.", description: "You trip over what seem to be the bones of a large Dragon. Upon further examination, you discover the bones to be a pair of greaves."),
        Artifact(id: 11, name: "Boots of Speed", imageName: "Artifact_Boots_of_Speed", slot: "Feet", effect: "Worn on the feet, these boots increase hero's movement rate over land.", description: "Visiting a local wise man, you explain the intent of your journey. He reaches into a chest and withdraws a strange pair of boots which he hands to you.")
    ]
    
    return artsArray
}

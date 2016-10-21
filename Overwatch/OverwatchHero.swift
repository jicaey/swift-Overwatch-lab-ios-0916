//
//  OverwatchHero.swift
//  Overwatch
//
//  Created by Michael Young on 10/21/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

typealias Health = Int

protocol Weapon {
    func fire() -> String
    func heal() -> String
}

protocol OverwatchHero: Weapon, CustomStringConvertible {
    var name: HeroName { get set }
    var hitPoints: Health { get set }
    var heroType: HeroType { get }
    
    func produceHeroType() -> HeroType
    func produceInitialHitPoints() -> Health
}

// MARK: Implement generic weapon functions.
extension OverwatchHero {
    func fire() -> String {
        switch heroType {
        case .offense:
        return "Offense: 👊🏽"
        case .defense:
        return "Defense: ✋🏽"
        case .support:
        return "Support: 👐🏽"
        case .tank:
        return "Tank: ✊🏽"
        }
    }
    
    func heal() -> String {
        switch heroType {
        case .offense:
            return "Heal: ✖️"
        case .defense:
            return "Heal: ✖️"
        case .support:
            return "Heal: ❤️"
        case .tank:
            return "Heal: ✖️"
        }
    }
}

// MARK: Providing a default implementation
extension OverwatchHero {
    func produceHeroType() -> HeroType {
        switch name {
        case .genji:
            return HeroType.offense
        case .mcCree:
            return HeroType.offense
        case .pharah:
            return HeroType.offense
        case .reaper:
            return HeroType.offense
        case .soldier76:
            return HeroType.offense
        case .tracer:
            return HeroType.offense
        case .bastion:
            return HeroType.defense
        case .hanzo:
            return HeroType.defense
        case .junkrat:
            return HeroType.defense
        case .mei:
            return HeroType.defense
        case .torbjörn:
            return HeroType.defense
        case .widowmaker:
            return HeroType.defense
        case .dva:
            return HeroType.tank
        case .reinhardt:
            return HeroType.tank
        case .roadhog:
            return HeroType.tank
        case .winston:
            return HeroType.tank
        case .zarya:
            return HeroType.tank
        case .ana:
            return HeroType.support
        case .lúcio:
            return HeroType.support
        case .mercy:
            return HeroType.support
        case .symmetra:
            return HeroType.support
        case .zenyatta:
            return HeroType.support

        }
    }
    
    func produceInitialHitPoints() -> Health {
        switch heroType {
        case .offense:
            return 250
        case .defense:
            return 250
        case .support:
            return 150
        case .tank:
            return 500
        }
    }
}

extension OverwatchHero {
    var description: String {
        return "Name: \(name)\nType: \(heroType.description)\nAttack: \(fire())\nHeal: \(heal())\nHit Points: \(produceInitialHitPoints())"
        
    }
    

}














































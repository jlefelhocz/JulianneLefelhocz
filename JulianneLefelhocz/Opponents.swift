//
//  Opponents.swift
//  JulianneLefelhocz
//
//  Created by Julianne Lefelhocz on 4/24/16.
//  Copyright © 2016 JulianneLefelhocz. All rights reserved.
//

import Foundation
import UIKit

var level: Int = 1
var coins: Int = 0
var StrengthV: Int = 1
var SpeedV: Int = 0
var FireV: Int = 0
var IceV: Int = 0

protocol Targetable {
    func takeDamage(_ damage: Int)
}

protocol PAttack {
    func attack(_ target: Targetable)
}

class Opponent: Targetable {
    var HP: Int
    let Name: String
    let imageN: String
    let HPO: Int
    
    init(Name: String, HP: Int, HPO: Int, imageN: String) {
        self.HP = HP
        self.Name = Name
        self.imageN = imageN
        self.HPO = HPO
    }
    
    func takeDamage(_ damage: Int) {
        HP -= damage
    }
    
}

class Player {
    
    init() {
    }
    
    func StrengthA(_ target: Targetable) {
        target.takeDamage(StrengthV)
    }
    func SpeedA(_ target: Targetable) {
        target.takeDamage(SpeedV)
    }
    func FireA(_ target: Targetable) {
        target.takeDamage(FireV)
    }
    func IceA(_ target: Targetable) {
        target.takeDamage(IceV)
    }
}

    let User = Player()
    var hero01 = Opponent(Name: "Lightning Blue", HP: 5, HPO: 5, imageN: "hero01")
    var hero02 = Opponent(Name: "Red Ranger", HP: 5, HPO: 5, imageN: "hero02")
    var hero03 = Opponent(Name: "Left Lagoon", HP: 5, HPO: 5, imageN: "hero03")
    var hero04 = Opponent(Name: "Blue Bat", HP: 5, HPO: 5, imageN: "hero04")
    var hero05 = Opponent(Name: "Agua Girl", HP: 10, HPO: 10, imageN: "hero05")
    var hero06 = Opponent(Name: "Pink Power", HP: 10, HPO: 10, imageN: "hero06")
    var hero07 = Opponent(Name: "Super Gal", HP: 10, HPO: 10, imageN: "hero07")
    var hero08 = Opponent(Name: "Mystic Magic", HP: 12, HPO: 12, imageN: "hero08")
    var hero09 = Opponent(Name: "Purple Strike", HP: 12, HPO: 12, imageN: "hero09")
    var hero10 = Opponent(Name: "Teal Takedown", HP: 15, HPO: 15, imageN: "hero10")
    var heroD = Opponent(Name: "LastStraw", HP: 10, HPO: 10, imageN: "hero01")







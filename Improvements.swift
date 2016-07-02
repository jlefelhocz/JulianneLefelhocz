//
//  Improvements.swift
//  JulianneLefelhocz
//
//  Created by Julianne Lefelhocz on 4/24/16.
//  Copyright © 2016 JulianneLefelhocz. All rights reserved.
//

import Foundation
import UIKit

class Battle {
    
    let Oppsarray = [hero01, hero02, hero03, hero04, hero05, hero06, hero07, hero08, hero09, hero10]
    
    func choose() -> Opponent {
        for Opps in Oppsarray {
            if(Opps.HP > 0) {
                return Opps
            }
        }
        return heroD
    }

    var enemyD: Int = 0
    
    func defeat() {
        if (level == 1) {
            coins += 1
        } else {
            coins += 1 * (Int(Double(level) * 0.75))
        }
        enemyD += 1

        if(enemyD == 10) {
            level += 1
            enemyD = 0
            for Opp in Oppsarray {
                Opp.HP = Int(Double(Opp.HPO) * Double(level) * 0.75)
            }
        }
    }

}


class Upgrades {
    var image: String = ""
    var Uname: String = ""
    
    init(image: String, Uname: String) {
        self.image = image
        self.Uname = Uname
    }
    
    
}



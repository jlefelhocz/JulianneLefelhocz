//
//  BuyStuff.swift
//  JulianneLefelhocz
//
//  Created by Julianne Lefelhocz on 4/26/16.
//  Copyright © 2016 JulianneLefelhocz. All rights reserved.
//

import Foundation


func UpgradeStrength() {
    let check = Int(Double(StrengthV)*7.5)
    
    if(coins >= check) {
        StrengthV += 1
        coins -= check
    }
}

func UpgradeSpeed() {
    let check = Int(Double(SpeedV)*7.5)
    
    if(coins >= check) {
        SpeedV += 1
        coins -= check
    }
}

func UpgradeIce() {
    let check = Int(Double(IceV)*7.5)
    
    if(coins >= check) {
        IceV += 1
        coins -= check
    }
}

func UpgradeFire() {
    let check = Int(Double(FireV)*7.5)
    
    if(coins >= check) {
        FireV += 1
        coins -= check
    }
}
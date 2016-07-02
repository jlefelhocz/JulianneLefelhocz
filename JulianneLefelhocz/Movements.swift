//
//  Movements.swift
//  JulianneLefelhocz
//
//  Created by Julianne Lefelhocz on 4/24/16.
//  Copyright © 2016 JulianneLefelhocz. All rights reserved.
//

import Foundation
import UIKit
import CoreMotion





func exampleCheck(_ acceleration: CMAcceleration, rotation: CMRotationRate) -> Bool{
    
    if (acceleration.x > 0.2 && acceleration.x < 3 && rotation.y < -0.1 && rotation.y > -3) {
        return true
    } else {
        return false
    }
}

func checkStrength(_ acceleration: CMAcceleration) -> Bool {
    
    if(acceleration.z > 0.75 && acceleration.z < 3) {
        return true
    } else {
        return false
    }
}

func checkSpeed(_ acceleration: CMAcceleration) -> Bool {
    
    if(acceleration.x > 0.75 && acceleration.x < 3) {
        return true
    } else {
        return false
    }
}

func checkIce(_ rotation: CMRotationRate) -> Bool {
    if(rotation.y > 0.75 && rotation.y < 3) {
        return true
    } else {
        return false
    }
}

func checkFire(_ rotation: CMRotationRate) -> Bool {
    if(rotation.x > 0.75 && rotation.x < 3) {
        return true
    } else {
        return false
    }
}

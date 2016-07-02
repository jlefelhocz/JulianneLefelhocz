//
//  UpgradeController.swift
//  JulianneLefelhocz
//
//  Created by Julianne Lefelhocz on 4/24/16.
//  Copyright © 2016 JulianneLefelhocz. All rights reserved.
//

import UIKit
import Foundation
import CoreMotion


class GameController: UIViewController {

    @IBOutlet var levelD: UILabel!
    @IBOutlet var OppI: UIImageView!
    @IBOutlet var HPD: UILabel!
    @IBOutlet var MoneyD: UILabel!
    @IBOutlet var NameD: UILabel!
    
    @IBAction func StrengthB(_ sender: AnyObject) {
        UpgradeStrength()
        self.strengthC.text = "\(Int(Double(StrengthV)*7.5)) coins"
        self.MoneyD.text = "\(coins)"
    }
    
    @IBAction func SpeedB(_ sender: AnyObject) {
        UpgradeSpeed()
        self.speedC.text = "\(Int(Double(SpeedV)*7.5)) coins"
        self.MoneyD.text = "\(coins)"
    }
    
    @IBAction func FireB(_ sender: AnyObject) {
        UpgradeFire()
        self.fireC.text = "\(Int(Double(FireV)*7.5)) coins"
        self.MoneyD.text = "\(coins)"
    }
    
    @IBAction func IceB(_ sender: AnyObject) {
        UpgradeIce()
        self.iceC.text = "\(Int(Double(IceV)*7.5)) coins"
        self.MoneyD.text = "\(coins)"
    }
    
    @IBOutlet var strengthC: UILabel!
    @IBOutlet var speedC: UILabel!
    @IBOutlet var fireC: UILabel!
    @IBOutlet var iceC: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let battle1 = Battle()
        var ActiveOpp = battle1.choose()
        
        func Update() {
            self.HPD.text = "\(ActiveOpp.HP)"
            self.NameD.text = "\(ActiveOpp.Name)"
            self.MoneyD.text = "\(coins)"
            self.levelD.text = "\(level)"
            self.OppI.image = UIImage(named: "\(ActiveOpp.imageN)")
            
            if(ActiveOpp.HP <= 0) {
                battle1.defeat()
                ActiveOpp = battle1.choose()
                self.OppI.image = UIImage(named: "\(ActiveOpp.imageN)")
            }
            
        }
        
        Update()

        let motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates()
        
        motionManager.gyroUpdateInterval = 0.1
        motionManager.accelerometerUpdateInterval = 0.1
        
        motionManager.startAccelerometerUpdates(to: OperationQueue.current()!, withHandler: { (accelerometerData: CMAccelerometerData?, NSError) -> Void in
            
            motionManager.startGyroUpdates(to: OperationQueue.current()!) {
                (gyroData: CMGyroData?, NSError) -> Void in
                
                
                if(checkStrength((accelerometerData?.acceleration)!) == true) {
                    User.StrengthA(ActiveOpp)
                    Update()
                }
                
                if(checkSpeed((accelerometerData?.acceleration)!) == true) {
                    User.SpeedA(ActiveOpp)
                    Update()
                }
                
                if(checkIce((gyroData?.rotationRate)!) == true) {
                    User.IceA(ActiveOpp)
                    Update()
                }
                if(checkFire((gyroData?.rotationRate)!) == true) {
                    User.FireA(ActiveOpp)
                    Update()
                }
            }
        })

        
        
    }
    
}

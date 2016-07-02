//
//  UpgradeController.swift
//  JulianneLefelhocz
//
//  Created by Julianne Lefelhocz on 4/28/16.
//  Copyright © 2016 JulianneLefelhocz. All rights reserved.
//

import UIKit

class UpgradeController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet var Upgradetable: UITableView!
    
    let manager = UpgradeSource()
    var upgrades = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Upgradetable.delegate = self
        self.Upgradetable.dataSource = self
        self.upgrades = manager.getUpgrades()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.upgrades.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let upgrade = self.upgrades[indexPath.row] as? Upgrades
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? UpgradeCell!
    cell!.UpgradeN?.text = upgrade?.Uname
    cell!.selectionStyle = UITableViewCellSelectionStyle.None
    return cell!
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.Upgradetable.contentInset = UIEdgeInsetsMake(0,0,55,0)
    }
    
}






//
//  PlayersViewController.swift
//  Ratings
//
//  Created by Lucas Marzocco on 4/14/16.
//  Copyright © 2016 Lucas Marzocco. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {
    
    var players:[Player] = playersData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return players.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath) as! PlayerCell
        
        let player = players[indexPath.row] as Player
        cell.player = player
        
        return cell
    }
    
    @IBAction func cancelToPlayersViewController(segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func savePlayerDetail(segue: UIStoryboardSegue) {
        
        if let PlayerDetailsViewController = segue.sourceViewController as? PlayerDetailsViewController {
            
            if let player = PlayerDetailsViewController.player {
                players.append(player)
                
                let indexPath = NSIndexPath(forRow: players.count - 1, inSection:0)
                tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            }
        }
        
    }
    
    
}

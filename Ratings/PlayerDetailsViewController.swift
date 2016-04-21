//
//  PlayerDetailsViewController.swift
//  Ratings
//
//  Created by Lucas Marzocco on 4/20/16.
//  Copyright © 2016 Lucas Marzocco. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    var game: String = "Chess" {
        didSet {
            detailLabel.text? = game
        }
    }
    
    var player:Player?
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayerDetail" {
            player = Player(name: nameTextField.text!, game: game, rating:1)
        }
        
        if segue.identifier == "PickGame" {
            if let GamePickerViewController = segue.destinationViewController as? GamePickerViewController {
                GamePickerViewController.selectedGame = game
            }
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        print ("init!")
        super.init(coder: aDecoder)
    }
    
    deinit {
        print ("deinitialized")
    }
    
    @IBAction func unwindWithSelectedGame(segue: UIStoryboardSegue) {
        if let GamePickerViewController = segue.sourceViewController as? GamePickerViewController,
            selectedGame = GamePickerViewController.selectedGame {
            game = selectedGame
        }
    }
}

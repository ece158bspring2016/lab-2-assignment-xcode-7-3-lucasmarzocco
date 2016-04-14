//
//  Players.swift
//  Ratings
//
//  Created by Lucas Marzocco on 4/13/16.
//  Copyright © 2016 Lucas Marzocco. All rights reserved.
//

import UIKit

struct Player {
    var name: String?
    var game: String?
    var rating: Int
    
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
    }
}

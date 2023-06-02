//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let title: [String]
    let choice1: [String]
    let choice2: [String]
    
    init(title: [String], choice1: [String], choice2: [String]) {
        self.title = title
        self.choice1 = choice1
        self.choice2 = choice2
    }
}

var stories = Story(title: ["You see a fork in the road.", "You see a tiger", "You find a treasure chest."],
                    choice1: ["Take a left.", "Shout for help.", "Open it."],
                    choice2: ["Take a right.", "Play dead.", "Check for traps."])

//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain() //creates a new instance of StoryBrain to tap into StoryBrain
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) { //when user presses a button
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
    }
    
    @objc func updateUI() {
        storyLabel.text = storyBrain.getStoryText() //changes story label
        choice1Button.setTitle(storyBrain.getNextButton1(), for: .normal) //changes button title
        choice2Button.setTitle(storyBrain.getNextButton2(), for: .normal)
    }
    
}


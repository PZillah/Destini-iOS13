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
    
    @IBAction func choiceMade(_ sender: UIButton) { //when user presses a button
        let userChoice = sender.currentTitle!
        storyBrain.nextStory(userChoice)
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = "You see a fork in the road."
        choice1Button.setTitle("Take a left.", for: .normal)
        choice2Button.setTitle("Take a right.", for: .normal)
    }
    
    @objc func updateUI() {
        storyLabel.text = storyBrain.getStoryText() //changes story label
        choice1Button.setTitle(storyBrain.getNextButton1(), for: .normal) //changes button title
        choice2Button.setTitle(storyBrain.getNextButton2(), for: .normal)
    }
    
}


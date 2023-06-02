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
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.currentTitle == choice1 {
            updateUI()
        }
        
    }
    
    var storyStep = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        storyLabel.text = story0
//        choice1Button.setTitle(choice1, for: .normal)
//        choice2Button.setTitle(choice2, for: .normal)
        updateUI()
    }
    
    @objc func updateUI() {
        //change storyLabel
        //change buttons title
    }
    
    func nextStoryLabel() {
        
    }
}


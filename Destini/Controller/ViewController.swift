//
//  ViewController.swift
//  Destini
//
//  Created by Rahul Sharma on 15/04/20.
//  Copyright © 2020 Rahul Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryText()
        choice1Button.setTitle(storyBrain.getStoryChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getStoryChoice2(), for: .normal)
    }
}


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
    
    
    var storyLogic = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstStory = storyLogic.getStory()
        
        storyLabel.text = firstStory.title
        
        choice1Button.setTitle(firstStory.choice1, for: UIControl.State.normal)
        
        
        choice2Button.setTitle(firstStory.choice2, for: UIControl.State.normal)

    }
    
    
    
    
    func updateUI() {
        storyLogic.goNextStory()
        
        let nextStory = storyLogic.getStory()
        
        storyLabel.text = nextStory.title
        
        choice1Button.setTitle(nextStory.choice1, for: UIControl.State.normal)
        
        
        choice2Button.setTitle(nextStory.choice2, for: UIControl.State.normal)
    }
    
    


}


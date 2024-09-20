//
//  ViewController.swift
//  Story teller
//
//  Created by Shivam Kumar on 20/09/24.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var storyView = StoryView()
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createView()
        showDataInViews()
        
    }
    
    func createView(){
        storyView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(storyView)
        NSLayoutConstraint.activate([
            storyView.topAnchor.constraint(equalTo: view.topAnchor),
            storyView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            storyView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            storyView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
        
    var storyIndexNumber = StoryBrain().storyIndexNumber
    
    func showDataInViews(){
        storyView.storyLabel.text = storyBrain.getStoryTitle()
        storyView.choice1.setTitle(storyBrain.getStoryChoice1(), for: .normal)
        storyView.choice2.setTitle(storyBrain.getStoryChoice2(), for: .normal)
        
        storyView.choice1.addTarget(self, action: #selector(onSelectingOption), for: .touchUpInside)
        storyView.choice2.addTarget(self, action: #selector(onSelectingOption), for: .touchUpInside)
    }
    
    @objc func onSelectingOption(_ sender : UIButton){
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
        
    }
    
    func updateUI(){
        storyView.storyLabel.text = storyBrain.getStoryTitle()
        storyView.choice1.setTitle(storyBrain.getStoryChoice1(), for: .normal)
        storyView.choice2.setTitle(storyBrain.getStoryChoice2(), for: .normal)
    }
    
    
    


}


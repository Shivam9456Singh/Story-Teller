//
//  StoryView.swift
//  Story teller
//
//  Created by Shivam Kumar on 20/09/24.
//

import Foundation

import UIKit

class StoryView: UIView {
    
    var storyLabel : UILabel = {
        let storyLabel = UILabel()
        storyLabel.text = "This is story"
        storyLabel.translatesAutoresizingMaskIntoConstraints = false
        storyLabel.numberOfLines = 0
        storyLabel.textAlignment = .justified
        storyLabel.textColor = .white
        storyLabel.font = .systemFont(ofSize: 24)
        return storyLabel
    }()
    private var backgroundImage : UIImageView = {
        let backgroundImage = UIImageView()
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.clipsToBounds = true
        backgroundImage.contentMode = .scaleAspectFill
        return backgroundImage
    }()
    
    var choice1 : UIButton = {
        let choice1 = UIButton(type: .custom)
        choice1.setBackgroundImage(UIImage(named: "choice1Background"), for: .normal)
        choice1.setTitle("Choice 1", for: .normal)
        choice1.clipsToBounds = true
        
        choice1.titleLabel?.numberOfLines = 0
        choice1.titleLabel?.textAlignment = .center
        choice1.translatesAutoresizingMaskIntoConstraints = false
        return choice1
    }()
    
    var choice2 : UIButton = {
        let choice2 = UIButton(type: .custom)
        choice2.setBackgroundImage(UIImage(named: "choice2Background"), for: .normal)
        choice2.setTitle("Choice 2", for: .normal)
        choice2.clipsToBounds = true
        choice2.titleLabel?.textAlignment = .center
        choice2.titleLabel?.numberOfLines = 0
        
        choice2.translatesAutoresizingMaskIntoConstraints = false
        return choice2
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("(NScoder:) not implemented")
    }
    
    
    
    private func setUpViews(){
        addSubview(backgroundImage)
        sendSubviewToBack(backgroundImage)
        addSubview(storyLabel)
        addSubview(choice1)
        addSubview(choice2)
    }
    
    
    private func setUpConstraints(){
        
        NSLayoutConstraint.activate([
            
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            storyLabel.topAnchor.constraint(equalTo: topAnchor,constant: 50),
            storyLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            storyLabel.widthAnchor.constraint(equalToConstant: 350),
            storyLabel.heightAnchor.constraint(equalToConstant: 500),
            
            
            choice1.topAnchor.constraint(equalTo: storyLabel.bottomAnchor, constant: 50),
            choice1.centerXAnchor.constraint(equalTo: centerXAnchor),
            choice1.widthAnchor.constraint(equalToConstant: 300),
            choice1.heightAnchor.constraint(equalToConstant: 100),
            
            
            choice2.topAnchor.constraint(equalTo: choice1.bottomAnchor, constant: 20),
            choice2.centerXAnchor.constraint(equalTo: centerXAnchor),
            choice2.widthAnchor.constraint(equalToConstant: 300),
            choice2.heightAnchor.constraint(equalToConstant: 100),
            
        ])
    }
    
}

//
//  ViewController.swift
//  snakes-and-ladders
//
//  Created by Parikshit Gothwal on 04/09/19.
//  Copyright © 2019 Urantia Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerOneDice: UIImageView!
    @IBOutlet weak var playerTwoDice: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //gesture recognizer for dice images
        let playerOneDiceRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.diceOneImageChange))
        let playerTwoDiceRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.diceTwoImageChange))
        
        //adding gesture recognizer to images
        playerOneDice.addGestureRecognizer(playerOneDiceRecognizer)
        playerTwoDice.addGestureRecognizer(playerTwoDiceRecognizer)
        
        //enabling images for user interaction
        playerOneDice.isUserInteractionEnabled = true
        playerTwoDice.isUserInteractionEnabled = true
        
    }

    //changes dice one image 1-6
    @objc func diceOneImageChange(){
        
        let randomNumber = Int(arc4random_uniform(UInt32(6)))
        playerOneDice.image = UIImage(named: "\(randomNumber+1)dice")
    }
    
    //changes dice two image 1-6
    @objc func diceTwoImageChange(){
        
        let randomNumber = Int(arc4random_uniform(UInt32(6)))
        playerTwoDice.image = UIImage(named: "\(randomNumber+1)dice")
    }
    
}


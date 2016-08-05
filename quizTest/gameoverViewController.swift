//
//  gameoverViewController.swift
//  quizTest
//
//  Created by KimGyuho on 2016. 8. 3..
//  Copyright © 2016년 KimGyuho. All rights reserved.
//

import Foundation
import UIKit


class gameoverViewController: UIViewController {
    
    @IBOutlet weak var gameScore: UILabel!
    
    var gameScoreData : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameScore.text = String(gameScoreData)
        
    }
    
}

//
//  ViewController.swift
//  Dicee App
//
//  Created by Brad Martin on 2/3/19.
//  Copyright © 2019 Brad Martin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceImageArray = ["dice1",
                          "dice2",
                          "dice3",
                          "dice4",
                          "dice5",
                          "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var diceIndex1: Int = 0
    var diceIndex2: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButton(_ sender: UIButton) {
        diceIndex1 = Int.random(in: 0...5)
        diceIndex2 = Int.random(in: 0...5)
        
        diceImageView1.image = UIImage(named: diceImageArray[diceIndex1])
        diceImageView2.image = UIImage(named: diceImageArray[diceIndex2])
        
    }
    
}


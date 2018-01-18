//
//  ViewController.swift
//  Dicee App
//
//  Created by Sezan Saimon on 1/8/18.
//  Copyright © 2018 Sezan Saimon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceeImageView1: UIImageView!
    @IBOutlet weak var diceeImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()

    }
    func updateDiceImages() {
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        print(randomDiceIndex1)
        diceeImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceeImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}


//
//  ViewController.swift
//  Dice Game
//
//  Created by Mehedi Hasan on 22-02-2022



import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    var leftDiceNumber = 1
    var rightDiceNumber = 1;
    override func viewDidLoad() {
        super.viewDidLoad()
//        Do any additional setup after loading the view.
//        diceImageViewOne.image = #imageLiteral(resourceName: "DiceSix")
//        diceImageViewOne.alpha = 1
//        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceTwo")
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArrey = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceSix"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceFive")]
        
        diceImageViewTwo.image = diceArrey[Int.random(in: 0..<6)]
        diceImageViewOne.image = diceArrey[Int.random(in: 0..<6)]
        
    }
    
}


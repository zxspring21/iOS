//
//  ViewController.swift
//  Concentration
//
//  Created by 盧柏瑋 on 2018/11/20.
//  Copyright © 2018 盧柏瑋. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var flipCount = 0 {
        didSet{
            //this property setting will do following instructions when parameter had been set, by the way, there's another keyword,willSet, you can search.
            flipCountLabel.text = "Flip:\(flipCount)"
        }
    }
    var emojiChoices = ["👻","🎃","🦈","🐠","🎃","🐳","🦉","🐇","🦁"]
    
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
            print("cardNumber = \(cardNumber)")
        }else{
            print("choosen card wasn't in cardButtons")
        }
    }
    func flipCard(withEmoji emoji:String, on button:UIButton){
        print("current=emoji:\(emoji)")
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
    }
}


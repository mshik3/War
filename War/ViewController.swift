//
//  ViewController.swift
//  War
//
//  Created by Mustafa Shikora on 12/20/16.
//  Copyright © 2016 Shikora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!

    @IBOutlet weak var PlayerLabel: UILabel!
    var PlayerScore = 0
    @IBOutlet weak var CPULabel: UILabel!
    var CPUScore = 0
    
    var cards: Array<UIImage> = [UIImage(named: "card2")!, UIImage(named: "card3")!, UIImage(named: "card4")!, UIImage(named: "card5")!, UIImage(named: "card6")!, UIImage(named: "card7")!, UIImage(named: "card8")!, UIImage(named: "card9")!, UIImage(named: "card10")!, UIImage(named: "jack")!, UIImage(named: "queen")!, UIImage(named: "king")!, UIImage(named: "ace")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftRand = Int(arc4random_uniform(13))
        let rightRand = Int(arc4random_uniform(13))
        
        leftImageView.image = cards[leftRand]
        rightImageView.image = cards[rightRand]
        
        if leftRand > rightRand{
            //left wins
            PlayerScore+=1
            PlayerLabel.text = String(PlayerScore)
        }
        else if leftRand==rightRand{
            //do nothing
        }
        else{
            //right wins
            CPUScore+=1
            CPULabel.text = String(CPUScore)
        }
    }

}


//
//  ViewController.swift
//  lifecounter
//
//  Created by Kira Brodsky on 4/16/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PlayerTwoLife: UILabel!
    
    @IBOutlet weak var PlayerOneLife: UILabel!
    
    
    @IBOutlet weak var LoserLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoserLabel.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func PlayerOnePlusFive(_ sender: Any) {
        var value = Int(PlayerOneLife.text ?? "0")!
        value += 5
        PlayerOneLife.text = "\(value)"
        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
        }
    }
    
    
    @IBAction func PlayerOneMinusFive(_ sender: Any) {
        var value = Int(PlayerOneLife.text ?? "0")!
        value -= 5
        PlayerOneLife.text = "\(value)"
        
        if value < 0 {
            LoserLabel.text = "Player 1 LOSES"
            LoserLabel.isHidden = false
        }
    }
    
    
    @IBAction func PlayerOnePlus(_ sender: Any) {
        var value = Int(PlayerOneLife.text ?? "0")!
        value += 1
        PlayerOneLife.text = "\(value)"
        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
        }
    }
    
    
    
    @IBAction func PlayerOneMinus(_ sender: Any) {
        var value = Int(PlayerOneLife.text ?? "0")!
        value -= 1
        PlayerOneLife.text = "\(value)"
        
        if value < 0 {
            LoserLabel.text = "Player 1 LOSES"
            LoserLabel.isHidden = false
        }
    }
    
    
    @IBAction func PlayerTwoPlusFive(_ sender: Any) {
        var value = Int(PlayerTwoLife.text ?? "0")!
        value += 5
        PlayerTwoLife.text = "\(value)"
        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
        }

    }
    
    
    @IBAction func PlayerTwoMinusFive(_ sender: Any) {
        var value = Int(PlayerTwoLife.text ?? "0")!
        value -= 5
        PlayerTwoLife.text = "\(value)"
        
        if value < 0 {
            LoserLabel.text = "Player 2 LOSES"
            LoserLabel.isHidden = false
        }
    }
    
    
    
    @IBAction func PlayerTwoPlus(_ sender: Any) {
        var value = Int(PlayerTwoLife.text ?? "0")!
        value += 1
        PlayerTwoLife.text = "\(value)"
        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
        }
    }
    
    
    
    @IBAction func PlayerTwoMinus(_ sender: Any) {
        var value = Int(PlayerTwoLife.text ?? "0")!
        value -= 1
        PlayerTwoLife.text = "\(value)"
        
        if value < 0 {
            LoserLabel.text = "Player 2 LOSES"
            LoserLabel.isHidden = false
        }
    }
    
    
}


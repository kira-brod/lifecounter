//
//  ViewController.swift
//  lifecounter
//
//  Created by Kira Brodsky on 4/16/25.
//

import UIKit

class ViewController: UIViewController {
//    
//    public class Player {
//        var addButton : UIButton!
//        var subtractButtonv : UIButton!
//        var customAddButton : UIButton!
//        var customSubtractButton : UIButton!
//        
//        var editCustomButton : UIButton!
//        
//        var playerName : String!
//        var playerCount : Int!
//        
//        init(playerName: String!, playerCount: Int!) {
//         
//            self.playerName = playerName
//            self.playerCount = playerCount
//        }
//    }

//    @IBOutlet weak var PlayerStack: UIStackView!
//    var myPlayersArray : [String] = []
    
    @IBOutlet weak var Player1: UIView!
    
    @IBOutlet weak var Player2: UIView!
    
    @IBOutlet weak var Player3: UIView!
    
    @IBOutlet weak var Player4: UIView!
    
    @IBOutlet weak var Player5: UIView!
    
    @IBOutlet weak var Player6: UIView!
    
    @IBOutlet weak var Player7: UIView!
    
    @IBOutlet weak var Player8: UIView!
    
    // MAKE LOSER LABEL
    
    var count = 4
    var text = ""
    var first = true
    var historyArr: [String] = [""]
    var players: [UILabel] = []
    

    
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var AddPlayer: UIButton!
    
    @IBOutlet weak var SubtractPlayer: UIButton!
    
    
    
    @IBOutlet weak var Player1Score: UILabel!
    
    @IBOutlet weak var Player2Score: UILabel!
    
    @IBOutlet weak var Player3Score: UILabel!
    
    @IBOutlet weak var Player4Score: UILabel!
    
    @IBOutlet weak var Player5Score: UILabel!
    
    @IBOutlet weak var Player6Score: UILabel!
    
    @IBOutlet weak var Player7Score: UILabel!
    
    @IBOutlet weak var Player8Score: UILabel!
    
    
    
    @IBOutlet weak var Input: UITextField!
    
    
    
    @IBOutlet weak var Player1AddAny: UIButton!
    
    @IBOutlet weak var Player1SubtractAny: UIButton!
    
    @IBOutlet weak var Player2AddAny: UIButton!
    
    @IBOutlet weak var Player2SubtractAny: UIButton!
    
    @IBOutlet weak var Player3AddAny: UIButton!
    
    @IBOutlet weak var Player3SubtractAny: UIButton!
    
    @IBOutlet weak var Player4AddAny: UIButton!
    
    @IBOutlet weak var Player4SubtractAny: UIButton!
    
    @IBOutlet weak var Player5AddAny: UIButton!
    
    @IBOutlet weak var Player5SubtractAny: UIButton!
    
    @IBOutlet weak var Player6AddAny: UIButton!
    
    @IBOutlet weak var Player6SubtractAny: UIButton!
    
    @IBOutlet weak var Player7AddAny: UIButton!
    
    @IBOutlet weak var Player7SubtractAny: UIButton!
    
    @IBOutlet weak var Player8AddAny: UIButton!
    
    @IBOutlet weak var Player8SubtractAny: UIButton!
    
        
    
    @IBOutlet weak var LoserLabel: UILabel!
    
        
    @IBOutlet weak var Ok: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Player5.isHidden = true
        Player6.isHidden = true
        Player7.isHidden = true
        Player8.isHidden = true
        
        Input.isHidden = true
        label.isHidden = true
        LoserLabel.isHidden = true
        Ok.isHidden = true
        
        players.append(Player1Score)
        players.append(Player2Score)
        players.append(Player3Score)
        players.append(Player4Score)
        
        
        print(players.count)
        
    
        
        

        
        
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
        
//        for index in 0..<4 {
//            myPlayersArray.append("Player \(index+1)")
//        }
//        
//        for (index,element) in myPlayersArray.enumerated() {
//            
//            var oneBtn : UIButton {
//                let button = UIButton()
//                button.setTitle(element, for: .normal)
//                button.backgroundColor = .systemBlue
//                button.setTitleColor(UIColor.black, for: .normal)
//                
//                return button
//            }
        }
    
    
    @IBAction func AddPlayer(_ sender: Any) {
        
        
        
        if count >= 8 {
            AddPlayer.isEnabled = false
        } else {
            AddPlayer.isEnabled = true
            count += 1
        }
        
        if count <= 2 {
            SubtractPlayer.isEnabled = false
        } else {
            SubtractPlayer.isEnabled = true
        }
        
        
        if count == 3 {
            Player3.isHidden = false
            Player3Score.text = "20"
            Player3SubtractAny.setTitle("- 5", for: .normal)
            Player3AddAny.setTitle("+ 5", for: .normal)
            players.append(Player3Score)


        } else if count == 4 {
            Player4.isHidden = false
            Player4Score.text = "20"
            Player4SubtractAny.setTitle("- 5", for: .normal)
            Player4AddAny.setTitle("+ 5", for: .normal)
            players.append(Player4Score)

            
        } else if count == 5 {
            Player5.isHidden = false
            Player5Score.text = "20"
            Player5SubtractAny.setTitle("- 5", for: .normal)
            Player5AddAny.setTitle("+ 5", for: .normal)
            players.append(Player5Score)

            
        } else if count == 6 {
            Player6.isHidden = false
            Player6Score.text = "20"
            Player6SubtractAny.setTitle("- 5", for: .normal)
            Player6AddAny.setTitle("+ 5", for: .normal)
            players.append(Player6Score)

            
        } else if count == 7 {
            Player7.isHidden = false
            Player7Score.text = "20"
            Player7SubtractAny.setTitle("- 5", for: .normal)
            Player7AddAny.setTitle("+ 5", for: .normal)
            players.append(Player7Score)

            
        } else if count == 8 {
            Player8.isHidden = false
            Player8Score.text = "20"
            Player8SubtractAny.setTitle("- 5", for: .normal)
            Player8AddAny.setTitle("+ 5", for: .normal)
            AddPlayer.isEnabled = false
            players.append(Player8Score)

        }
        
        print(players.count)
        
    }
    
    @IBAction func SubtractPlayer(_ sender: Any) {
        
        
        if count <= 2 {
            SubtractPlayer.isEnabled = false
        } else {
            SubtractPlayer.isEnabled = true
            count -= 1
        }
        
        if count >= 8 {
            AddPlayer.isEnabled = false
        } else {
            AddPlayer.isEnabled = true
        }
        
        
        if count == 2 {
            Player3.isHidden = true
            SubtractPlayer.isEnabled = false
            players.removeLast()

        } else if count == 3 {
            Player4.isHidden = true
            players.removeLast()
            
        } else if count == 4 {
            Player5.isHidden = true
            players.removeLast()
            
        } else if count == 5 {
            Player6.isHidden = true
            players.removeLast()
            
        } else if count == 6 {
            Player7.isHidden = true
            players.removeLast()
            
        } else if count == 7 {
            Player8.isHidden = true
            players.removeLast()
        }
        
        print(players.count)
    }
    
    @IBAction func Player1Add1(_ sender: Any) {
        let text1 = Player1Score.text ?? ""
        var value = Int(text1) ?? 0
        value += 1
        Player1Score.text = "\(value)"
        historyArr.append("Player 1 gained one life")
        print(historyArr)
        AddPlayer.isEnabled = false
        
        
        

//        
//        if value > 0 && LoserLabel.isHidden == false {
//            LoserLabel.isHidden = true
//        }
        

        
        
    }
    
    var removed1 = false
    
    @IBAction func Player1Subtract1(_ sender: Any) {
        let text1 = Player1Score.text ?? ""
        var value = Int(text1) ?? 0
        value -= 1
        Player1Score.text = "\(value)"
        historyArr.append("Player 1 lost one life")
        print(historyArr)
        AddPlayer.isEnabled = false
        
        
        print(removed1)
        

        
        if value <= 0  && removed1 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for (index, _) in players.enumerated() {
                    
                    if players[index] == Player1Score {
                        val = index
                    }
                }
                players.remove(at: val)
                print(index)
                print(players.count)
                removed1 = true
                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false
        }
    }
    
    
    @IBAction func Player2Add1(_ sender: Any) {
        let text1 = Player2Score.text ?? ""
        var value = Int(text1) ?? 0
        value += 1
        Player2Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 2 gained one life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    var removed2 = false
    @IBAction func Player2Subtract1(_ sender: Any) {
        let text1 = Player2Score.text ?? ""
        var value = Int(text1) ?? 0
        value -= 1
        Player2Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 2 lost one life")

        
     

        
        if value <= 0 && removed2 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player2Score {
                        val = index
                    }
                }
                players.remove(at: val)
                print(players.count)
                removed2 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    }
    
    
    @IBAction func Player3Add1(_ sender: Any) {
        let text1 = Player3Score.text ?? ""
        var value = Int(text1) ?? 0
        value += 1
        Player3Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 3 gained one life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    var removed3 = false
    @IBAction func Player3Subtract1(_ sender: Any) {
        let text1 = Player3Score.text ?? ""
        var value = Int(text1) ?? 0
        value -= 1
        Player3Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 3 lost one life")

        

        
        if value <= 0  && removed3 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player3Score {
                        val = index
                    }
                }
                players.remove(at: val)
                print(players.count)
                removed3 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    }
    
    
    @IBAction func Player4Add1(_ sender: Any) {
        let text1 = Player4Score.text ?? ""
        var value = Int(text1) ?? 0
        value += 1
        Player4Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 4 gained one life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    var removed4 = false
    @IBAction func Player4Subtract1(_ sender: Any) {
        let text1 = Player4Score.text ?? ""
        var value = Int(text1) ?? 0
        value -= 1
        Player4Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 4 lost one life")

        

        
        if value <= 0 && removed4 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player4Score {
                        val = index
                    }
                }
                players.remove(at: val)
                print(players.count)
                removed4 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    }
    
    
    @IBAction func Player5Add1(_ sender: Any) {
        let text1 = Player5Score.text ?? ""
        var value = Int(text1) ?? 0
        value += 1
        Player5Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 5 gained one life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    var removed5 = false
    @IBAction func Player5Subtract1(_ sender: Any) {
        let text1 = Player5Score.text ?? ""
        var value = Int(text1) ?? 0
        value -= 1
        Player5Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 5 lost one life")


        
        if value <= 0 && removed5 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player4Score {
                        val = index
                    }
                }
                players.remove(at: val)
                print(players.count)
                removed5 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    }
    
    
    @IBAction func Player6Add1(_ sender: Any) {
        let text1 = Player6Score.text ?? ""
        var value = Int(text1) ?? 0
        value += 1
        Player6Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 6 gained one life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    var removed6 = false
    @IBAction func Player6Subtract1(_ sender: Any) {
        let text1 = Player6Score.text ?? ""
        var value = Int(text1) ?? 0
        value -= 1
        Player6Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 6 lost one life")


        
        if value <= 0 && removed6 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player4Score {
                        val = index
                    }
                }
                players.remove(at: val)
                removed6 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    }
    
    
    @IBAction func Player7Add1(_ sender: Any) {
        let text1 = Player7Score.text ?? ""
        var value = Int(text1) ?? 0
        value += 1
        Player7Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 7 gained one life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    var removed7 = false
    @IBAction func Player7Add2(_ sender: Any) {
        let text1 = Player7Score.text ?? ""
        var value = Int(text1) ?? 0
        value -= 1
        Player7Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 7 lost one life")


        
        if value <= 0 && removed7 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player4Score {
                        val = index
                    }
                }
                players.remove(at: val)
                print(players.count)
                removed7 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    
    }
    
    
    @IBAction func Player8Add1(_ sender: Any) {
        let text1 = Player8Score.text ?? ""
        var value = Int(text1) ?? 0
        value += 1
        Player8Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 8 gained one life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    var removed8 = false
    @IBAction func Player8Subtract1(_ sender: Any) {
        let text1 = Player8Score.text ?? ""
        var value = Int(text1) ?? 0
        value -= 1
        Player8Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 8 lost one life")


        
        if value <= 0 && removed8 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player4Score {
                        val = index
                    }
                }
                players.remove(at: val)
                print(players.count)
                removed8 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    }
    
    
    
    @IBAction func Input(_ sender: Any) {
        text = Input.text ?? "0"
        
    }
    
    
    @IBAction func Player1EditAddAny(_ sender: Any) {
        
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player1AddAny.setTitle("+ \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
        
        
    }
    
    
    
    @IBAction func Player1AddAny(_ sender: Any) {
        var Added: Int = 0
        text = Player1AddAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player1Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value + Added
        Player1Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 1 gained \(Added) life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    
    
    @IBAction func Player1EditSubtractAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player1SubtractAny.setTitle("- \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
        
    }
    
    
    
    
    @IBAction func Player1SubtractAny(_ sender: Any) {
        var Added: Int = 0
        text = Player1SubtractAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player1Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value - Added
        Player1Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 1 lost \(Added) life")


        
        if value <= 0 && removed1 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player4Score {
                        val = index
                    }
                }
                players.remove(at: val)
                print(players.count)
                removed1 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    }
    
    
    
    @IBAction func Player2EditAddAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player2AddAny.setTitle("+ \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
    }
    
    
    
    @IBAction func Player2AddAny(_ sender: Any) {
        var Added: Int = 0
        text = Player2AddAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player2Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value + Added
        Player2Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 2 gained \(Added) life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    
    
    @IBAction func Player2EditSubtractAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player2SubtractAny.setTitle("- \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
    }
    
    
    @IBAction func Player2SubtractAny(_ sender: Any) {
        var Added: Int = 0
        text = Player2SubtractAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player2Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value - Added
        Player2Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 2 lost \(Added) life")


        
        if value <= 0 && removed2 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player4Score {
                        val = index
                    }
                }
                players.remove(at: val)
                removed2 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    }
    
    
    @IBAction func Player3EditAddAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player3AddAny.setTitle("+ \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
    }
    
    @IBAction func Player3AddAny(_ sender: Any) {
        var Added: Int = 0
        text = Player3AddAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player3Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value + Added
        Player3Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 3 gained \(Added) life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    
    @IBAction func Player3EditSubtractAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player3SubtractAny.setTitle("- \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
    }
    
    
    @IBAction func Player3SubtractAny(_ sender: Any) {
        var Added: Int = 0
        text = Player3SubtractAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player3Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value - Added
        Player3Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 3 lost \(Added) life")


        
        if value <= 0 && removed3 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player4Score {
                        val = index
                    }
                }
                players.remove(at: val)
                removed3 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    }
    
    
    @IBAction func Player4EditAddAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player4AddAny.setTitle("+ \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
        
    }
    
    
    @IBAction func Player4AddAny(_ sender: Any) {
        var Added: Int = 0
        text = Player4AddAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player4Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value + Added
        Player4Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 4 gained \(Added) life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    
    @IBAction func Player4EditSubtractAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player4SubtractAny.setTitle("- \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
    }
    
    
    @IBAction func Player4SubtractAny(_ sender: Any) {
        var Added: Int = 0
        text = Player4SubtractAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player4Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value - Added
        Player4Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 4 lost \(Added) life")


        
        if value <= 0 && removed4 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player4Score {
                        val = index
                    }
                }
                players.remove(at: val)
                print(players.count)
                removed4 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    }
    
    @IBAction func Player5EditAddAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player5AddAny.setTitle("+ \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
    }
    
    
    
    @IBAction func Player5AddAny(_ sender: Any) {
        var Added: Int = 0
        text = Player5AddAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player5Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value + Added
        Player5Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 5 gained \(Added) life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    
    @IBAction func Player5EditSubtractAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player5SubtractAny.setTitle("- \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
    }
    
    
    
    @IBAction func Player5SubtractAny(_ sender: Any) {
        var Added: Int = 0
        text = Player5SubtractAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player5Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value - Added
        Player5Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 5 lost \(Added) life")


        
        if value <= 0 && removed5 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player4Score {
                        val = index
                    }
                }
                players.remove(at: val)
                removed5 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    }
    
    
    @IBAction func Player6EditAddAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player6AddAny.setTitle("+ \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
    }
    
    
    @IBAction func Player6AddAny(_ sender: Any) {
        var Added: Int = 0
        text = Player6AddAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player6Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value + Added
        Player6Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 6 gained \(Added) life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    @IBAction func Player6EditSubtractAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player6SubtractAny.setTitle("- \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
    }
    
    
    
    @IBAction func Player6SubtractAny(_ sender: Any) {
        var Added: Int = 0
        text = Player6SubtractAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player6Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value - Added
        Player6Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 6 lost \(Added) life")


        
        if value <= 0 && removed6 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player4Score {
                        val = index
                    }
                }
                players.remove(at: val)
                print(players.count)
                removed6 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    }
    
    
    
    @IBAction func Player7EditAddAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player7AddAny.setTitle("+ \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
    }
    
    
    
    @IBAction func Player7AddAny(_ sender: Any) {
        var Added: Int = 0
        text = Player7AddAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player7Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value + Added
        Player7Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 7 gained \(Added) life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    
    
    @IBAction func Player7EditSubtractAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player7SubtractAny.setTitle("- \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
    }
    
    
    
    @IBAction func Player7SubtractAny(_ sender: Any) {
        var Added: Int = 0
        text = Player7SubtractAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player7Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value - Added
        Player7Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 7 lost \(Added) life")


        
        if value <= 0 && removed7 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player4Score {
                        val = index
                    }
                }
                players.remove(at: val)
                print(players.count)
                removed7 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    }
    
    
    @IBAction func Player8EditAddAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player8AddAny.setTitle("+ \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
    }
    
    
    @IBAction func Player8AddAny(_ sender: Any) {
        var Added: Int = 0
        text = Player8AddAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player8Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value + Added
        Player8Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 8 gained \(Added) life")


        
        if value > 0 && LoserLabel.isHidden == false {
            LoserLabel.isHidden = true
            Ok.isHidden = true

        }
    }
    
    
    @IBAction func Player8EditSubtractAny(_ sender: Any) {
        Input.isHidden = false
        label.isHidden = false
        
        if first != true {
            
            var Added: Int = 0
            text = Input.text ?? "0"
            
            Added = Int(text) ?? 0


            Player8SubtractAny.setTitle("- \(Added)", for: .normal)
            
            first = false
            
            
        } else {
            first = false
        }
    }
    
    
    @IBAction func Player8SubtractAny(_ sender: Any) {
        var Added: Int = 0
        text = Player8SubtractAny.titleLabel?.text ?? "0"
        
        let arr = text.split(separator: " ")
        
        Added = Int(arr[1]) ?? 0
        let text1 = Player8Score.text ?? ""
        var value = Int(text1) ?? 0
        value = value - Added
        Player8Score.text = "\(value)"
        AddPlayer.isEnabled = false
        historyArr.append("Player 8 lost \(Added) life")


        
        if value <= 0 && removed8 == false{
//            LoserLabel.text = "Player 1 Loses"
//            LoserLabel.isHidden = false
            
            var val = 0
            
            if (players.count > 1){
                for index in 0..<players.count {
                    
                    if players[index] == Player4Score {
                        val = index
                    }
                }
                players.remove(at: val)
                print(players.count)
                removed8 = true

                
                
            }
            
            
        }
        
        if players.count == 1 {
            LoserLabel.isHidden = false
            Ok.isHidden = false

        }
    }
    
    
    @IBAction func ViewHistory(_ sender: Any) {
        
//        HistoryList.text = "no history"
        
//        if historyArr.isEmpty {
//            HistoryList.text = "No history"
//        } else {
//            
//            HistoryList.text = historyArr.joined(separator: "\n")
//        }
        
        
//        for (index, element) in historyArr.enumerated() {
//            
//            let action : UILabel = {
//                let text =  UILabel()
//                text.text = element
//                
//                text.tag = index
//                
//                return text
//            }()
//            
//            History.addArrangedSubview(action)
//            
//        }
    
        
        
    }
    
    
    @IBAction func Reset(_ sender: Any) {
        
        Player5.isHidden = true
        Player6.isHidden = true
        Player7.isHidden = true
        Player8.isHidden = true
        
        Input.isHidden = true
        label.isHidden = true
        LoserLabel.isHidden = true
        
        Player1Score.text = "20"
        Player2Score.text = "20"
        Player3Score.text = "20"
        Player4Score.text = "20"
        Player5Score.text = "20"
        Player6Score.text = "20"
        Player7Score.text = "20"
        Player8Score.text = "20"
        
        count = 4
        
        Player1AddAny.setTitle("+ 5", for: .normal)
        Player2AddAny.setTitle("+ 5", for: .normal)
        Player3AddAny.setTitle("+ 5", for: .normal)
        Player4AddAny.setTitle("+ 5", for: .normal)
        Player5AddAny.setTitle("+ 5", for: .normal)
        Player6AddAny.setTitle("+ 5", for: .normal)
        Player7AddAny.setTitle("+ 5", for: .normal)
        Player8AddAny.setTitle("+ 5", for: .normal)
        
        Player1SubtractAny.setTitle("- 5", for: .normal)
        Player2SubtractAny.setTitle("- 5", for: .normal)
        Player3SubtractAny.setTitle("- 5", for: .normal)
        Player4SubtractAny.setTitle("- 5", for: .normal)
        Player5SubtractAny.setTitle("- 5", for: .normal)
        Player6SubtractAny.setTitle("- 5", for: .normal)
        Player7SubtractAny.setTitle("- 5", for: .normal)
        Player8SubtractAny.setTitle("- 5", for: .normal)
        
        AddPlayer.isEnabled = true
        Ok.isHidden = true
        
        players.removeAll()
        players.append(Player1Score)
        players.append(Player2Score)
        players.append(Player3Score)
        players.append(Player4Score)
        
        Input.text = ""
        

        
        historyArr.removeAll()
//        HistoryList.text = ""



    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ViewHistory" {
            let controller = segue.destination as? HistoryViewController
            controller?.historyArr = historyArr
            print("Preparing for segue - historyArr: \(historyArr)")

            
            
        }
    }
    
  
    
    @IBAction func Ok(_ sender: Any) {
        Player5.isHidden = true
        Player6.isHidden = true
        Player7.isHidden = true
        Player8.isHidden = true
        
        Input.isHidden = true
        label.isHidden = true
        LoserLabel.isHidden = true
        
        Player1Score.text = "20"
        Player2Score.text = "20"
        Player3Score.text = "20"
        Player4Score.text = "20"
        Player5Score.text = "20"
        Player6Score.text = "20"
        Player7Score.text = "20"
        Player8Score.text = "20"
        
        count = 4
        
        Player1AddAny.setTitle("+ 5", for: .normal)
        Player2AddAny.setTitle("+ 5", for: .normal)
        Player3AddAny.setTitle("+ 5", for: .normal)
        Player4AddAny.setTitle("+ 5", for: .normal)
        Player5AddAny.setTitle("+ 5", for: .normal)
        Player6AddAny.setTitle("+ 5", for: .normal)
        Player7AddAny.setTitle("+ 5", for: .normal)
        Player8AddAny.setTitle("+ 5", for: .normal)
        
        Player1SubtractAny.setTitle("- 5", for: .normal)
        Player2SubtractAny.setTitle("- 5", for: .normal)
        Player3SubtractAny.setTitle("- 5", for: .normal)
        Player4SubtractAny.setTitle("- 5", for: .normal)
        Player5SubtractAny.setTitle("- 5", for: .normal)
        Player6SubtractAny.setTitle("- 5", for: .normal)
        Player7SubtractAny.setTitle("- 5", for: .normal)
        Player8SubtractAny.setTitle("- 5", for: .normal)
        
        AddPlayer.isEnabled = true
        Ok.isHidden = true
        
        players.removeAll()
        players.append(Player1Score)
        players.append(Player2Score)
        players.append(Player3Score)
        players.append(Player4Score)
        
        Input.text = ""
        
        
        


        
        historyArr.removeAll()
//        HistoryList.text = ""

    }
    
    
}


    
    



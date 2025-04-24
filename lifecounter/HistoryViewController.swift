//
//  HistoryViewController.swift
//  lifecounter
//
//  Created by Kira Brodsky on 4/23/25.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBAction func btnBackPressed(_ sender: Any) {
        NSLog("btnBackPressed")

        self.dismiss(animated: true)
    }

    @IBOutlet weak var HistoryList: UITextView!
    
    var historyArr: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad - historyArr: \(historyArr)")

        // Do any additional setup after loading the view.
        HistoryList.text = historyArr.joined(separator: "\n")
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }

}

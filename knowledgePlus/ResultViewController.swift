//
//  ResultViewController.swift
//  knowledgePlus
//
//  Created by english on 2024-04-03.
//

import UIKit

class ResultViewController: UIViewController {

    var score: Int = 0
    var totalQuestions: Int = 0
    
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScoreLabel.text = String(score)
        QuestionLabel.text = String(totalQuestions)
        
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  QuizViewController.swift
//  knowledgePlus
//
//  Created by english on 2024-03-22.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var QuizName: UILabel!
    
    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var progessBar: UIProgressView!
    
    @IBOutlet weak var ScoreLabel: UILabel!
    
    @IBOutlet var ChoicesButton: [UIButton]!
    
    var quizBrain: QuizBrain = QuizBrain(quiz: [])
    
    var selectedTopic = ViewController.title
    
    override func viewDidLoad() {
        super.viewDidLoad()

        QuizName.text = ViewController.title
        
        // Do any additional setup after loading the view.
        for button in ChoicesButton {
            button.backgroundColor = UIColor.white
        }
        selectQuestionTopic()
        
        updateUI()
    }
    
    
    @IBAction func AnswerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.titleLabel!.text!
        
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if (!quizBrain.nextQuestion()) {
//            performSegue(withIdentifier: "resultViewController", sender: self)
            result()
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        
        QuestionLabel.text = quizBrain.getQuestionText()
        
        let choices = quizBrain.getChoices()
        
        for x in 0..<ChoicesButton.count {
            ChoicesButton[x].setTitle(choices[x], for: .normal)
            ChoicesButton[x].backgroundColor = UIColor.white
        }
        
        progessBar.setProgress(quizBrain.getProgess(), animated: true)
//        progessBar.progress = quizBrain.getProgess()
        
        
        ScoreLabel.text = "\(quizBrain.getScore())"
    }
    
    func selectQuestionTopic() {
        
        var quizQuestions: [Question]
        
        switch(selectedTopic) {
        case "Zeus":
            quizQuestions = zeusQuestion
            break
        
        case "Hercules":
            quizQuestions = herculesQuestion
            break
            
        case "Hermes":
            quizQuestions = hermesQuestion
            break
            
        case "Poseidon":
            quizQuestions = poseidonQuestion
            break
            
        case "Hades":
            quizQuestions = hadesQuestion
            break
            
        default:
            quizQuestions = zeusQuestion
            break
        }
        
        quizBrain = QuizBrain(quiz: quizQuestions.shuffled())
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "resultViewController" {
//            let resultViewController = segue.destination as! ResultViewController
//            resultViewController.score = quizBrain.score
//            resultViewController.totalQuestions = quizBrain.questionNumber
//        }
//    }
    
    func result() {
        
        let resultVC = storyboard?.instantiateViewController(withIdentifier: "result") as! ResultViewController

        resultVC.score = quizBrain.score
        resultVC.totalQuestions = quizBrain.questionNumber + 1

        present(resultVC, animated: true, completion: nil)
    }
}


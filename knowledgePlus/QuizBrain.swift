//
//  QuizBrain.swift
//  knowledgePlus
//
//  Created by english on 2024-04-02.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    
    var score = 0
    
    var quiz :[Question]
    
    init(questionNumber: Int = 0, score: Int = 0, quiz: [Question]) {
        self.questionNumber = questionNumber
        self.score = score
        self.quiz = quiz
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    func getChoices() -> Array<String> {
        return quiz[questionNumber].answers
    }
    
    func getProgess() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion() -> Bool {
        
        if (questionNumber + 1 < quiz.count) {
            self.questionNumber += 1
            return true
        }
        else {
//            self.questionNumber += 1
            return false
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        }
        
        return false
    }
    
}

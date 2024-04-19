//
//  Question.swift
//  knowledgePlus
//
//  Created by english on 2024-04-02.
//

import Foundation

struct Question {
    
    let question: String
    
    let answers: [String]
    
    let answer: String
    
    init(question: String, answers: [String], answer: String) {
        self.question = question
        self.answers = answers
        self.answer = answer
    }
}

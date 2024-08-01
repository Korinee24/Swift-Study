//
//  Question.swift
//  QuestionAnswer
//
//  Created by Eric Kim on 8/1/24.
//

import Foundation

//Declare new Struct
struct Question: Hashable {
    let questionText: String
    let possibleAnswer: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(
            questionText:"Who invented the World Wide We?",
            possibleAnswer: [
                "Steve Jobs",
                "Linus Torvalds",
                "Bill Gates",
                "Tim Berners-Lee"
            ],
            correctAnswerIndex: 3
        ),
        Question(
            questionText: "What was the first object oriented programming language?",
            possibleAnswer: [
                "Simula",
                "Python",
                "Swift",
                "C"
            ],
            correctAnswerIndex: 0
        )
        
    ]
}


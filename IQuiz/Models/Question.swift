//
//  Question.swift
//  IQuiz
//
//  Created by Thiago Alex on 29/01/24.
//

import Foundation

struct Question {
    var title: String
    var answers: [String]
    var correctAnswer: Int
}

let questions: [Question] = [
    Question(
        title: "Qual feitiço para desarmar o seu oponente, em Harry Potter?",
        answers: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"],
        correctAnswer: 2
    ),
    Question(
        title: "Em que ano Avatar 2 foi lançado?",
        answers: ["2020", "2021", "2022"],
        correctAnswer: 1
    ),
    Question(
        title: "Em que ano Vingadores Ultimato foi lançado?",
        answers: ["2019", "2018", "2017"],
        correctAnswer: 0
    )
]

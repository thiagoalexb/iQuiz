//
//  QuestionViewController.swift
//  IQuiz
//
//  Created by Thiago Alex on 29/01/24.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var punctuation = 0
    var currentQuestion = 0

    
    @IBOutlet weak var titleQuestion: UILabel!
    
    @IBOutlet var answerButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let question = getCurrentQuestion()
        hideBackButton()
        configureTitle(question: question)
        configureButtons(question: question)
    }
    
    private func getCurrentQuestion() -> Question {
        return questions[currentQuestion]
    }
    
    private func hideBackButton() {
        navigationItem.hidesBackButton = true
    }
    
    private func configureTitle(question: Question) {
        titleQuestion.numberOfLines = 0
        titleQuestion.textAlignment = .center
        
        titleQuestion.text = question.title
    }
    
    private func configureButtons(question: Question) {
        for (index, button) in answerButtons.enumerated() {
            button.layer.cornerRadius = 12.0
            button.setTitle(question.answers[index], for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }

    
    @IBAction func answerPressed(_ sender: UIButton) {
        let isCorrectAnswer = questions[currentQuestion].correctAnswer == sender.tag
        
        if isCorrectAnswer {
            punctuation += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        currentQuestion += 1
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6, execute: {
            self.checkIfHasNextQuestion()
        })
        
    }
    
    private func checkIfHasNextQuestion(){
        if(currentQuestion < questions.count) {
            let question = getCurrentQuestion()
            configureTitle(question: question)
            configureButtons(question: question)
        } else {
            performSegue(withIdentifier: "goToPerformance", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let performanceVC = segue.destination as? PunctuationViewController else { return }
        
        performanceVC.punctuation = punctuation
    }
}

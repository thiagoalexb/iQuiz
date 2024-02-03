//
//  PunctuationViewController.swift
//  IQuiz
//
//  Created by Thiago Alex on 30/01/24.
//

import UIKit

class PunctuationViewController: UIViewController {
    
    var punctuation: Int = 0

    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var percentage: UILabel!
    
    @IBOutlet weak var restart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideBackButton()
        configureButton()
        configureResult()
        configurePercentage()
    }
    
    private func hideBackButton() {
        navigationItem.hidesBackButton = true
    }
    
    private func configureButton() {
        restart.layer.cornerRadius = 12.0
    }
    
    private func configureResult() {
        let questionsCount = questions.count
        result.text = "Você acertou \(punctuation) de \(questionsCount) questões."
    }
    
    private func configurePercentage() {
        let finalPercentage = (punctuation * 100) / questions.count
        percentage.text = "Percentual final: \(finalPercentage)%"
    }

    @IBAction func resetPressed(_ sender: UIButton) {
    }
}

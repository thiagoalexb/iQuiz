//
//  ViewController.swift
//  IQuiz
//
//  Created by Thiago Alex on 29/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startQuizButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        hideBackButton()
        configureButton()
    }
    
    private func hideBackButton() {
        navigationItem.hidesBackButton = true
    }
    
    private func configureButton() {
        startQuizButton.layer.cornerRadius = 12.0
    }
    
    @IBAction func startPressed(_ sender: UIButton) {
    }
}


//
//  ViewController.swift
//  Quiz
//
//  Created by DANIEL MCBRAYER on 5/4/16.
//  Copyright © 2016 DANIEL MCBRAYER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = ["What is your name?",
                               "What is your quest?",
                               "What is your favorite color?"]
    
    let answers: [String] = ["King Arthur",
                             "To find the holy grail",
                             "I don't know that"]
    
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
 
}
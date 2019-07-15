//
//  ViewController.swift
//  TriviaGame
//
//  Created by Spur IQ on 7/14/19.
//  Copyright © 2019 Praveena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Declare IBOutlets here
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var validationLabel: UILabel!
    @IBOutlet weak var finalMessageLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    //Declare variables here
    var currQuesNum = 0
    var score = 0
    var questions = ["What goes up when rain comes down",
                     "What loses its head in the morning and gets it back in the night",
                     "What has a mouth but cannot eat, has a bed but cannot sleep",
                     "What has legs but cannot walk",
                     "You will buy me to eat but never eat me. What am I"]
    var answers = ["Umbrella",
                   "Pillow",
                   "River",
                   "Chair",
                   "Plate"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currQuesNum]
    }
    
    @IBAction func nextButtonClick(_ sender: Any) {
        processAnswer()
    }
    
    func processAnswer(){
        currQuesNum += 1
        if(currQuesNum >= questions.count){
            return
        }
        if(answerTextField.text!.caseInsensitiveCompare(answers[currQuesNum]) == .orderedSame){
            validationLabel.text = "Correct"
            score += 1
        }
        else {
            validationLabel.text = "Incorrect.\nCorrect answer = \(answers[currQuesNum])"
        }
        
        scoreLabel.text = "Score: \(score)"
        displayNextQuestion()
    }
    
    func displayNextQuestion(){
        questionLabel.text = questions[currQuesNum]
        answerTextField.text = ""
    }
    
    
}


//
//  ViewController.swift
//  fingerCount
//
//  Created by Animesh Manglik on 12/8/16.
//  Copyright © 2016 Animesh Manglik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fingerInput: UITextField!
    @IBOutlet weak var fingerOutput: UILabel!

    let outputText = "You guessed: "
    let outputText2 = "Fingers holding: "
    
    @IBAction func submit(_ sender: AnyObject) {
        let randomNum:UInt32 = arc4random_uniform(6)
        let fingerGuess:Int = Int(randomNum)

        if ((fingerInput.text!) == "") {
            fingerOutput.text = "Enter Something"
            return
        }

        let fingerInputText = fingerInput.text!
        let fingerGuessInput:Int = Int(fingerInputText)!
        
        var outputText = self.outputText + fingerInputText + "\n"
        outputText += self.outputText2 + String(fingerGuess) + "\n"

        if (fingerGuess == fingerGuessInput) {
            outputText += "Wohoo Congratulations!"
        } else {
            outputText += "Try Again :("
        }
        
        fingerInput.text = ""
        fingerOutput.text = outputText
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fingerOutput.text = "Input Number and guess the answer?"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


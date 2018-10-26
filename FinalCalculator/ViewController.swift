//
//  ViewController.swift
//  FinalCalculator
//
//  Created by Julio Rivera on 10/9/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var percentNeeded: UILabel!
    @IBOutlet weak var textFieldOne: UITextField!
    @IBOutlet weak var textFieldTwo: UITextField!
    @IBOutlet weak var textFieldThree: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func calculate(_ sender: UIButton) {
        let currentGrade = Int(textFieldOne.text!)!
        let desiredGrade = Int(textFieldTwo.text!)!
        let testPercent = Int(textFieldThree.text!)!
        let answer = (0.1 * desiredGrade - (100 - testPercent) * currentGrade) / desiredGrade
        
        percentNeeded.text! = ("\(answer)")
        
        
    }
    
    
}


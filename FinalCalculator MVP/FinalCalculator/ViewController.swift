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
    @IBAction func calculate(_ sender: AnyObject) {
//        let currentGrade = (textFieldOne.text! as NSString).doubleValue
//        let desiredGrade = (textFieldTwo.text! as NSString).doubleValue
//        let testPercent = (textFieldThree.text! as NSString).doubleValue
//
//        let answer = (100 * desiredGrade - (100 - testPercent) * currentGrade) / desiredGrade;
//
//        percentNeeded.text! = ("\(answer)")
        
        finalGrade()
        
        
    }
    func finalGrade() -> Int {
        if let desiredGradeInt:Int = Int(textFieldTwo.text!)!
        {
            var currentGradeDouble:Double = Double(textFieldOne.text!)!
            let testPercentInt:Int = Int(textFieldThree.text!)!
            
            var examGradePart1:Double = Double(100 - testPercentInt)
            examGradePart1 = examGradePart1 / 100
            
            let testPercentDouble = Double(testPercentInt) / 100
            currentGradeDouble = currentGradeDouble / 100
            
            var desiredGradeDouble = Double(desiredGradeInt)
            desiredGradeDouble = desiredGradeDouble / 100
    
            // Math Part
            
            let desiredGradeMinusExamPart1 = examGradePart1 * currentGradeDouble
            
            let desiredGradeMinusExamTimesCurrent = desiredGradeDouble - desiredGradeMinusExamPart1
            
            var desiredGradeMinusExamTimesCurrentDivideTestPercent = desiredGradeMinusExamTimesCurrent / testPercentDouble
            
            desiredGradeMinusExamTimesCurrentDivideTestPercent = desiredGradeMinusExamTimesCurrentDivideTestPercent * 100
            
            let desiredGradeMinusExamTimesCurrentDivideTestPercentInt = Int(desiredGradeMinusExamTimesCurrentDivideTestPercent)
            
            let desiredGradeMinusExamTimesCurrentDivideTestGradeIntString = String(desiredGradeMinusExamTimesCurrentDivideTestPercentInt)
            
            percentNeeded.text = (desiredGradeMinusExamTimesCurrentDivideTestGradeIntString + "%")
            
            print("Success")
            
            return Int(desiredGradeMinusExamTimesCurrentDivideTestPercent)
            
        }
        
    
    
}

}

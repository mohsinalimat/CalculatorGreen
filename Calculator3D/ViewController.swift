//  ViewController.swift
//  Calculator3D
//  Created by Fotios Tragopoulos on 12/12/2016.
//  Copyright © 2016 Fotios Tragopoulos. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var landscapeOutputLbl: UILabel!
    @IBOutlet weak var portraitOutputLbl: UILabel!
    
    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Subtrack = "-"
        case Add = "+"
        case Empty = "Empty"
    }
    
    var runningNumber = ""
    var currentOperation = Operation.Empty
    var leftValStr = ""
    var rightValStr = ""
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //Button 0
    @IBAction func zeroClicked(_ sender: Any) {
        if landscapeOutputLbl.text != "" {
            runningNumber += "0"
            landscapeOutputLbl.text = runningNumber
            portraitOutputLbl.text = runningNumber
        }
    }
    @IBAction func pzeroClicked(_ sender: Any) {
        if portraitOutputLbl.text != "" {
            runningNumber += "0"
            landscapeOutputLbl.text = runningNumber
            portraitOutputLbl.text = runningNumber
        }
    }
    
    //Button 00
    @IBAction func doubleZeroClicked(_ sender: Any) {
        if landscapeOutputLbl.text != "" {
            runningNumber += "00"
            landscapeOutputLbl.text = runningNumber
            portraitOutputLbl.text = runningNumber
        }
    }
    @IBAction func pdoubleZeroClicked(_ sender: Any) {
        if portraitOutputLbl.text != "" {
            runningNumber += "00"
            landscapeOutputLbl.text = runningNumber
            portraitOutputLbl.text = runningNumber
        }
    }

    //Button 000
    @IBAction func tripleZeroClicked(_ sender: Any) {
        if landscapeOutputLbl.text != "" {
            runningNumber += "000"
            landscapeOutputLbl.text = runningNumber
            portraitOutputLbl.text = runningNumber
        }
    }
    @IBAction func ptripleZeroClicked(_ sender: Any) {
        if portraitOutputLbl.text != "" {
            runningNumber += "000"
            landscapeOutputLbl.text = runningNumber
            portraitOutputLbl.text = runningNumber
        }
    }
    
    //Button .
    @IBAction func commaClicked(_ sender: Any) {
        if landscapeOutputLbl.text == "" || (landscapeOutputLbl.text?.contains("."))! {
            
        } else {
            runningNumber += "."
            landscapeOutputLbl.text = runningNumber
            portraitOutputLbl.text = runningNumber
        }
    }
    @IBAction func pcommaClicked(_ sender: Any) {
        if landscapeOutputLbl.text == "" || (landscapeOutputLbl.text?.contains("."))! {
            
        } else {
            runningNumber += "."
            landscapeOutputLbl.text = runningNumber
            portraitOutputLbl.text = runningNumber
        }
    }
    
    //Button 1
    @IBAction func oneClicked(_ sender: Any) {
        runningNumber += "1"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    @IBAction func poneClicked(_ sender: Any) {
        runningNumber += "1"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    
    //Button 2
    @IBAction func twoClicked(_ sender: Any) {
        runningNumber += "2"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    @IBAction func ptwoClicked(_ sender: Any) {
        runningNumber += "2"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    
    //Button 3
    @IBAction func threeClicked(_ sender: Any) {
        runningNumber += "3"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    @IBAction func pthreeClicked(_ sender: Any) {
        runningNumber += "3"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    
    //Button 4
    @IBAction func fourClicked(_ sender: Any) {
        runningNumber += "4"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    @IBAction func pfourClicked(_ sender: Any) {
        runningNumber += "4"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    
    //Button 5
    @IBAction func fiveClicked(_ sender: Any) {
        runningNumber += "5"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    @IBAction func pfiveClicked(_ sender: Any) {
        runningNumber += "5"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    
    //Button 6
    @IBAction func sixClicked(_ sender: Any) {
        runningNumber += "6"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    @IBAction func psixClicked(_ sender: Any) {
        runningNumber += "6"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    
    //Button 7
    @IBAction func sevenClicked(_ sender: Any) {
        runningNumber += "7"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    @IBAction func psevenClicked(_ sender: Any) {
        runningNumber += "7"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
   
    //Buttton 8
    @IBAction func eightClicked(_ sender: Any) {
        runningNumber += "8"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    @IBAction func peightClicked(_ sender: Any) {
        runningNumber += "8"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    
    //Button 9
    @IBAction func nineClicked(_ sender: Any) {
        runningNumber += "9"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    @IBAction func pnineClicked(_ sender: Any) {
        runningNumber += "9"
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    
    //Button +
    @IBAction func addClicked(_ sender: Any) {
        processOperation(operation: .Add)
    }
    @IBAction func paddClicked(_ sender: Any) {
        processOperation(operation: .Add)
    }
    
    //Button -
    @IBAction func subtrackClicked(_ sender: Any) {
    }
    @IBAction func prsubtrackClicked(_ sender: Any) {
    }
    
    //Button ÷
    @IBAction func divideClicked(_ sender: Any) {
    }
    @IBAction func pdivideClicked(_ sender: Any) {
    }
    
    //Button x
    @IBAction func multiplyClicked(_ sender: Any) {
    }
    @IBAction func pmultiplyClicked(_ sender: Any) {
    }
    
    //Button =
    @IBAction func resultClicked(_ sender: Any) {
        processOperation(operation: currentOperation)
    }
    @IBAction func presultClicked(_ sender: Any) {
        processOperation(operation: currentOperation)
    }
 
    //Button AC
    @IBAction func resetClicked(_ sender: Any) {
        result = ""
        landscapeOutputLbl.text = result
        portraitOutputLbl.text = result
    }
    @IBAction func presetClicked(_ sender: Any) {
        result = ""
        landscapeOutputLbl.text = result
        portraitOutputLbl.text = result
    }
    
    
//    func outputLbl() {
//        landscapeOutputLbl.text = result
//        portraitOutputLbl.text = result
//    }
    
    func processOperation(operation: Operation) {
        
        if currentOperation != Operation.Empty {
            
            //A user selected an operator, but then selected another operator without first entering a number
            if runningNumber != "" {
                rightValStr = runningNumber
                runningNumber = ""
                
                if currentOperation == Operation.Multiply {
                    result = "\(Double(leftValStr)! * Double(rightValStr)!)"
                }   else if currentOperation == Operation.Divide {
                    result = "\(Double(leftValStr)! / Double(rightValStr)!)"
                }   else if currentOperation == Operation.Subtrack {
                    result = "\(Double(leftValStr)! - Double(rightValStr)!)"
                }   else if currentOperation == Operation.Add {
                    result = "\(Double(leftValStr)! + Double(rightValStr)!)"
                }
                
                leftValStr = result
                landscapeOutputLbl.text = result
                portraitOutputLbl.text = result
            }
            
            currentOperation = operation
        }   else {
            
            //This is the first time an operator has been pressed
            leftValStr = runningNumber
            runningNumber = ""
            currentOperation = operation
        }
    }
    
    
    
    
}


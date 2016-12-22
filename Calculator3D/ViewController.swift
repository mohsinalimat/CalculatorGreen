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
            outputLbl()
        }
    }
    @IBAction func pzeroClicked(_ sender: Any) {
        if portraitOutputLbl.text != "" {
            runningNumber += "0"
            outputLbl()
        }
    }
    
    //Button 00
    @IBAction func doubleZeroClicked(_ sender: Any) {
        if landscapeOutputLbl.text != "" {
            runningNumber += "00"
            outputLbl()
        }
    }
    @IBAction func pdoubleZeroClicked(_ sender: Any) {
        if portraitOutputLbl.text != "" {
            runningNumber += "00"
            outputLbl()
        }
    }

    //Button 000
    @IBAction func tripleZeroClicked(_ sender: Any) {
        if landscapeOutputLbl.text != "" {
            runningNumber += "000"
            outputLbl()
        }
    }
    @IBAction func ptripleZeroClicked(_ sender: Any) {
        if portraitOutputLbl.text != "" {
            runningNumber += "000"
            outputLbl()
        }
    }
    
    //Button .
    @IBAction func commaClicked(_ sender: Any) {
        if landscapeOutputLbl.text == "" || (landscapeOutputLbl.text?.contains("."))! {
            
        } else {
            runningNumber += "."
            outputLbl()
        }
    }
    @IBAction func pcommaClicked(_ sender: Any) {
        if landscapeOutputLbl.text == "" || (landscapeOutputLbl.text?.contains("."))! {
            
        } else {
            runningNumber += "."
            outputLbl()
        }
    }
    
    //Button 1
    @IBAction func oneClicked(_ sender: Any) {
        runningNumber += "1"
        outputLbl()
    }
    @IBAction func poneClicked(_ sender: Any) {
        runningNumber += "1"
        outputLbl()
    }
    
    //Button 2
    @IBAction func twoClicked(_ sender: Any) {
        runningNumber += "2"
        outputLbl()
    }
    @IBAction func ptwoClicked(_ sender: Any) {
        runningNumber += "2"
        outputLbl()
    }
    
    //Button 3
    @IBAction func threeClicked(_ sender: Any) {
        runningNumber += "3"
        outputLbl()
    }
    @IBAction func pthreeClicked(_ sender: Any) {
        runningNumber += "3"
        outputLbl()
    }
    
    //Button 4
    @IBAction func fourClicked(_ sender: Any) {
        runningNumber += "4"
        outputLbl()
    }
    @IBAction func pfourClicked(_ sender: Any) {
        runningNumber += "4"
        outputLbl()
    }
    
    //Button 5
    @IBAction func fiveClicked(_ sender: Any) {
        runningNumber += "5"
        outputLbl()
    }
    @IBAction func pfiveClicked(_ sender: Any) {
        runningNumber += "5"
        outputLbl()
    }
    
    //Button 6
    @IBAction func sixClicked(_ sender: Any) {
        runningNumber += "6"
        outputLbl()
    }
    @IBAction func psixClicked(_ sender: Any) {
        runningNumber += "6"
        outputLbl()
    }
    
    //Button 7
    @IBAction func sevenClicked(_ sender: Any) {
        runningNumber += "7"
        outputLbl()
    }
    @IBAction func psevenClicked(_ sender: Any) {
        runningNumber += "7"
        outputLbl()
    }
   
    //Buttton 8
    @IBAction func eightClicked(_ sender: Any) {
        runningNumber += "8"
        outputLbl()
    }
    @IBAction func peightClicked(_ sender: Any) {
        runningNumber += "8"
        outputLbl()
    }
    
    //Button 9
    @IBAction func nineClicked(_ sender: Any) {
        runningNumber += "9"
        outputLbl()
    }
    @IBAction func pnineClicked(_ sender: Any) {
        runningNumber += "9"
        outputLbl()
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
        processOperation(operation: .Subtrack)
    }
    @IBAction func prsubtrackClicked(_ sender: Any) {
        processOperation(operation: .Subtrack)
    }
    
    //Button ÷
    @IBAction func divideClicked(_ sender: Any) {
        processOperation(operation: .Divide)
    }
    @IBAction func pdivideClicked(_ sender: Any) {
        processOperation(operation: .Divide)
    }
    
    //Button x
    @IBAction func multiplyClicked(_ sender: Any) {
        processOperation(operation: .Multiply)
    }
    @IBAction func pmultiplyClicked(_ sender: Any) {
        processOperation(operation: .Multiply)
    }
    
    //Button =
    @IBAction func resultClicked(_ sender: Any) {
        processOperation(operation: currentOperation)
        currentOperation = Operation.Empty
    }
    @IBAction func presultClicked(_ sender: Any) {
        processOperation(operation: currentOperation)
        currentOperation = Operation.Empty
    }
 
    //Button AC
    @IBAction func resetClicked(_ sender: Any) {
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    @IBAction func presetClicked(_ sender: Any) {
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Printing the result on the Labels
    func outputLbl() {
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
    }
    
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

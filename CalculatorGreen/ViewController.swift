//  ViewController.swift
//  Calculator3D
//  Created by Fotios Tragopoulos on 12/12/2016.
//  Copyright © 2016 Fotios Tragopoulos. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var landscapeOutputLbl: UILabel!
    @IBOutlet weak var portraitOutputLbl: UILabel!
    @IBOutlet weak var controlPanel: UILabel!
    @IBOutlet weak var portraitControlPanel: UILabel!
    
    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Subtrack = "-"
        case Add = "+"
        case Empty = "Empty"
    }
    
    var ctrlPanel = ""
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

    func forTailingZero(temp: Double) -> String{
        let tempVar = String(format: "%g", temp)
        return tempVar
    }
    
    //Button 0
    @IBAction func zeroClicked(_ sender: Any) {
        if landscapeOutputLbl.text != "" {
            runningNumber += "0"
            ctrlPanel += "0"
            outputLbl()
        }
    }
    @IBAction func pzeroClicked(_ sender: Any) {
        if portraitOutputLbl.text != "" {
            runningNumber += "0"
            ctrlPanel += "0"
            outputLbl()
        }
    }
    
    //Button 00
    @IBAction func doubleZeroClicked(_ sender: Any) {
        if landscapeOutputLbl.text != "" {
            runningNumber += "00"
            ctrlPanel += "00"
            outputLbl()
        }
    }
    @IBAction func pdoubleZeroClicked(_ sender: Any) {
        if portraitOutputLbl.text != "" {
            runningNumber += "00"
            ctrlPanel += "00"
            outputLbl()
        }
    }

    //Button 000
    @IBAction func tripleZeroClicked(_ sender: Any) {
        if landscapeOutputLbl.text != "" {
            runningNumber += "000"
            ctrlPanel += "000"
            outputLbl()
        }
    }
    @IBAction func ptripleZeroClicked(_ sender: Any) {
        if portraitOutputLbl.text != "" {
            runningNumber += "000"
            ctrlPanel += "000"
            outputLbl()
        }
    }
    
    //Button .
    @IBAction func commaClicked(_ sender: Any) {
        if landscapeOutputLbl.text == "" || (landscapeOutputLbl.text?.contains("."))! {
            
        } else {
            runningNumber += "."
            ctrlPanel += "."
            outputLbl()
        }
    }
    @IBAction func pcommaClicked(_ sender: Any) {
        if landscapeOutputLbl.text == "" || (landscapeOutputLbl.text?.contains("."))! {
            
        } else {
            runningNumber += "."
            ctrlPanel += "."
            outputLbl()
        }
    }
    
    //Button 1
    @IBAction func oneClicked(_ sender: Any) {
        runningNumber += "1"
        ctrlPanel += "1"
        outputLbl()
    }
    @IBAction func poneClicked(_ sender: Any) {
        runningNumber += "1"
        ctrlPanel += "1"
        outputLbl()
    }
    
    //Button 2
    @IBAction func twoClicked(_ sender: Any) {
        runningNumber += "2"
        ctrlPanel += "2"
        outputLbl()
    }
    @IBAction func ptwoClicked(_ sender: Any) {
        runningNumber += "2"
        ctrlPanel += "2"
        outputLbl()
    }
    
    //Button 3
    @IBAction func threeClicked(_ sender: Any) {
        runningNumber += "3"
        ctrlPanel += "3"
        outputLbl()
    }
    @IBAction func pthreeClicked(_ sender: Any) {
        runningNumber += "3"
        ctrlPanel += "3"
        outputLbl()
    }
    
    //Button 4
    @IBAction func fourClicked(_ sender: Any) {
        runningNumber += "4"
        ctrlPanel += "4"
        outputLbl()
    }
    @IBAction func pfourClicked(_ sender: Any) {
        runningNumber += "4"
        ctrlPanel += "4"
        outputLbl()
    }
    
    //Button 5
    @IBAction func fiveClicked(_ sender: Any) {
        runningNumber += "5"
        ctrlPanel += "5"
        outputLbl()
    }
    @IBAction func pfiveClicked(_ sender: Any) {
        runningNumber += "5"
        ctrlPanel += "5"
        outputLbl()
    }
    
    //Button 6
    @IBAction func sixClicked(_ sender: Any) {
        runningNumber += "6"
        ctrlPanel += "6"
        outputLbl()
    }
    @IBAction func psixClicked(_ sender: Any) {
        runningNumber += "6"
        ctrlPanel += "6"
        outputLbl()
    }
    
    //Button 7
    @IBAction func sevenClicked(_ sender: Any) {
        runningNumber += "7"
        ctrlPanel += "7"
        outputLbl()
    }
    @IBAction func psevenClicked(_ sender: Any) {
        runningNumber += "7"
        ctrlPanel += "7"
        outputLbl()
    }
   
    //Buttton 8
    @IBAction func eightClicked(_ sender: Any) {
        runningNumber += "8"
        ctrlPanel += "8"
        outputLbl()
    }
    @IBAction func peightClicked(_ sender: Any) {
        runningNumber += "8"
        ctrlPanel += "8"
        outputLbl()
    }
    
    //Button 9
    @IBAction func nineClicked(_ sender: Any) {
        runningNumber += "9"
        ctrlPanel += "9"
        outputLbl()
    }
    @IBAction func pnineClicked(_ sender: Any) {
        runningNumber += "9"
        ctrlPanel += "9"
        outputLbl()
    }
    
    //Button +
    @IBAction func addClicked(_ sender: Any) {
        processOperation(operation: .Add)
        ctrlPanel += " + "
        runningNumber = ""
        controlPanel.text = ctrlPanel
        portraitControlPanel.text = ctrlPanel
    }
    @IBAction func paddClicked(_ sender: Any) {
        processOperation(operation: .Add)
        ctrlPanel += " + "
        runningNumber = ""
        controlPanel.text = ctrlPanel
        portraitControlPanel.text = ctrlPanel
    }
    
    //Button -
    @IBAction func subtrackClicked(_ sender: Any) {
        processOperation(operation: .Subtrack)
        ctrlPanel += " - "
        runningNumber = ""
        controlPanel.text = ctrlPanel
        portraitControlPanel.text = ctrlPanel
    }
    @IBAction func prsubtrackClicked(_ sender: Any) {
        processOperation(operation: .Subtrack)
        ctrlPanel += " - "
        runningNumber = ""
        controlPanel.text = ctrlPanel
        portraitControlPanel.text = ctrlPanel
    }
    
    //Button ÷
    @IBAction func divideClicked(_ sender: Any) {
        processOperation(operation: .Divide)
        ctrlPanel += " ÷ "
        runningNumber = ""
        controlPanel.text = ctrlPanel
        portraitControlPanel.text = ctrlPanel
    }
    @IBAction func pdivideClicked(_ sender: Any) {
        processOperation(operation: .Divide)
        ctrlPanel += " ÷ "
        runningNumber = ""
        controlPanel.text = ctrlPanel
        portraitControlPanel.text = ctrlPanel
    }
    
    //Button x
    @IBAction func multiplyClicked(_ sender: Any) {
        processOperation(operation: .Multiply)
        ctrlPanel += " x "
        runningNumber = ""
        controlPanel.text = ctrlPanel
        portraitControlPanel.text = ctrlPanel
    }
    @IBAction func pmultiplyClicked(_ sender: Any) {
        processOperation(operation: .Multiply)
        ctrlPanel += " x "
        runningNumber = ""
        controlPanel.text = ctrlPanel
        portraitControlPanel.text = ctrlPanel
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
        runningNumber = ""
        ctrlPanel = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    @IBAction func presetClicked(_ sender: Any) {
        result = ""
        runningNumber = ""
        ctrlPanel = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
//Special Buttons Actions
 
    //Square Perimeter
    @IBAction func squarePerimeter(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let perimeter = round(10000*(4*a!))/10000
            let d: String = forTailingZero(temp: perimeter)
            runningNumber = "\(d)"
            ctrlPanel += "☐\(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Square Surface Area
    @IBAction func squareSA(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let surfaceArea = round(10000*(a!*a!))/10000
            let d: String = forTailingZero(temp: surfaceArea)
            runningNumber = "\(d)"
            ctrlPanel += "◼︎\(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Square Diagonal
    @IBAction func squareDiagonal(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let diagonal = round(10000*(sqrt(2)*a!))/10000
            let d: String = forTailingZero(temp: diagonal)
            runningNumber = "\(d)"
            ctrlPanel += "◪\(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }

    //Cube Volume
    @IBAction func cubeVolume(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let volume = round(10000*(a!*a!*a!))/10000
            let d: String = forTailingZero(temp: volume)
            runningNumber = "\(d)"
            ctrlPanel += "❒\(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }

    //Circle Perimeter
    @IBAction func circlePerimeter(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let perimeter = round(10000*(2*Double.pi*a!))/10000
            let d: String = forTailingZero(temp: perimeter)
            runningNumber = "\(d)"
            ctrlPanel += "◦\(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Circle Surface Area
    @IBAction func circleSA(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let surfaceArea = round(10000*(Double.pi * (a!*a!)))/10000
            let d: String = forTailingZero(temp: surfaceArea)
            runningNumber = "\(d)"
            ctrlPanel += "●\(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Sphere Surface Area
    @IBAction func sphereSA(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let surfaceArea = round(10000*(4 * Double.pi * (a!*a!)))/10000
            let d: String = forTailingZero(temp: surfaceArea)
            runningNumber = "\(d)"
            ctrlPanel += "◎\(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Sphere Volume
    @IBAction func sphereVolume(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let volume = round(10000*(4/3 * Double.pi * (a!*a!*a!)))/10000
            let d: String = forTailingZero(temp: volume)
            runningNumber = "\(d)"
            ctrlPanel += "◉\(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Rhombus Perimeter
    @IBAction func rhombusPerimeter(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let perimeter = round(10000*(4 * a!))/10000
            let d: String = forTailingZero(temp: perimeter)
            runningNumber = "\(d)"
            ctrlPanel += "◇\(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Rhombus Surface Area (Angle)
    @IBAction func rhombusSAangle(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let surfaceArea = round(10000*((a! * a!) * sin(a!)))/10000
            let d: String = forTailingZero(temp: surfaceArea)
            runningNumber = "\(d)"
            ctrlPanel += "◆\(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Number to the 2nd power
    @IBAction func xToThe2ndPower(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let surfaceArea = round(10000*(a! * a!))/10000
            let d: String = forTailingZero(temp: surfaceArea)
            runningNumber = "\(d)"
            ctrlPanel += "² = \(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Number to the 3rd power
    @IBAction func xToThe3rdPower(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let surfaceArea = round(10000*(a! * a! * a!))/10000
            let d: String = forTailingZero(temp: surfaceArea)
            runningNumber = "\(d)"
            ctrlPanel += "³ = \(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Number to the 4th power
    @IBAction func xToThe4thPower(_ sender: Any) {
        if runningNumber != "" {
                let a = Double(runningNumber)
                let surfaceArea = round(10000*(a! * a! * a! * a!))/10000
                let d: String = forTailingZero(temp: surfaceArea)
                runningNumber = "\(d)"
                ctrlPanel += "⁴ = \(d)"
            }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Square root of number
    @IBAction func rootOfx(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let surfaceArea = round(10000*(a?.squareRoot())!)/10000
            let d: String = forTailingZero(temp: surfaceArea)
            runningNumber = "\(d)"
            ctrlPanel = "√\(forTailingZero(temp: a!)) = \(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Cubic root of number
    @IBAction func cRootOfx(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let surfaceArea = round(10000*(pow(a!, (1/3))))/10000
            let d: String = forTailingZero(temp: surfaceArea)
            runningNumber = "\(d)"
            ctrlPanel = "∛\(forTailingZero(temp: a!)) = \(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Fourth root of number
    @IBAction func fourthRootOfx(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let surfaceArea = round(10000*(pow(a!, (1/4))))/10000
            let d: String = forTailingZero(temp: surfaceArea)
            runningNumber = "\(d)"
            ctrlPanel = "∜\(forTailingZero(temp: a!)) = \(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Inverse Number
    @IBAction func inverseNumber(_ sender: Any) {
        if runningNumber != "" {
            let a = Double(runningNumber)
            let surfaceArea = round(10000*(1/a!))/10000
            let d: String = forTailingZero(temp: surfaceArea)
            runningNumber = "\(d)"
            ctrlPanel = "¹/\(forTailingZero(temp: a!)) = \(d)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Pi number
    @IBAction func numberPi(_ sender: Any) {
        if runningNumber != "" && currentOperation == Operation.Empty {
            
        } else {
            portraitOutputLbl.text = ""
            landscapeOutputLbl.text = ""
            runningNumber = "\(Double.pi)"
            ctrlPanel += "π"
            outputLbl()
        }
    }
    
    //Changing the sign to a number
    @IBAction func plusMinus(_ sender: Any) {
        if portraitOutputLbl.text != "" {
            let a = "-\(runningNumber)"
            runningNumber = a
            ctrlPanel += " x (-1)"
            outputLbl()
        }
    }
    
    //Per Cent Button
    @IBAction func perCent(_ sender: Any) {
        if runningNumber != "" {
            processOperation(operation: currentOperation)
            runningNumber = portraitOutputLbl.text!
            let a: Double? = Double(runningNumber)
            let perCent = a! / 100
            let d: String = forTailingZero(temp: perCent)
            runningNumber = "\(d)"
            ctrlPanel += "% = \(runningNumber)"
        }
        result = ""
        currentOperation = Operation.Empty
        outputLbl()
    }
    
    //Printing the result on the Labels
    func outputLbl() {
        landscapeOutputLbl.text = runningNumber
        portraitOutputLbl.text = runningNumber
        controlPanel.text = ctrlPanel
        portraitControlPanel.text = ctrlPanel
    }
    
    func processOperation(operation: Operation) {
        
        if currentOperation != Operation.Empty {
            
            //A user selected an operator, but then selected another operator without first entering a number
            if runningNumber != "" {
                rightValStr = runningNumber
                runningNumber = ""
                
                //This function removes the trailing zero after the double number
                
                
                if currentOperation == Operation.Multiply {
                    let c = Double(leftValStr)! * Double(rightValStr)!
                    let d: String? = forTailingZero(temp: c)
                    result = d!
                }   else if currentOperation == Operation.Divide {
                    let c = Double(leftValStr)! / Double(rightValStr)!
                    let d: String? = forTailingZero(temp: c)
                    result = d!
                }   else if currentOperation == Operation.Subtrack {
                    let c = Double(leftValStr)! - Double(rightValStr)!
                    let d: String? = forTailingZero(temp: c)
                    result = d!
                }   else if currentOperation == Operation.Add {
                    let c = Double(leftValStr)! + Double(rightValStr)!
                    let d: String? = forTailingZero(temp: c)
                    result = d!
                }
                
                leftValStr = result
                landscapeOutputLbl.text = result
                portraitOutputLbl.text = result
                runningNumber = result
                ctrlPanel += " = \(result)"
                controlPanel.text = ctrlPanel
                portraitControlPanel.text = ctrlPanel
            }
            
            currentOperation = operation
        }   else {
            
            //This is the first time an operator has been pressed
            leftValStr = runningNumber
            runningNumber = ""
            currentOperation = operation
        }
    }
    
    //Application informations
    @IBAction func infoButtonPressed(_ sender: Any) {
        //Create the alert controller
        let alertController = UIAlertController(title: "", message: "Thanks for downloading Calculator 3D", preferredStyle: .actionSheet)
        
        //Create and add the GitHub link
        let gitImage = UIImage(named: "githubsrc")
        let link = "https://github.com/FotiosTragopoulos/Calculator3D"
        let gitLink = UIAlertAction(title: "GitHub Project", style: .default) { action -> Void in
            UIApplication.shared.openURL(NSURL(string: link)! as URL)
            print("something here... button click or action logging")
        }
        gitLink.setValue(gitImage, forKey: "image")
        
        //Create and add the Portfolio link
        let portImage = UIImage(named: "web")
        let linkPortfolio = "http://fotiostragopoulos.myds.me"
        let portLink = UIAlertAction(title: "Portfolio Website", style: .default) { action -> Void in
            UIApplication.shared.openURL(NSURL(string: linkPortfolio)! as URL)
            print("something here... button click or action logging")
        }
        portLink.setValue(portImage, forKey: "image")
        
        
        //Create and add OK action
        let yesAction = UIAlertAction(title: "OK", style: .cancel) { action -> Void in
        }
        
        alertController.addAction(portLink)
        alertController.addAction(gitLink)
        alertController.addAction(yesAction)
        
        //Present the AlertController
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func landscapeInfo(_ sender: UIButton) {
        //Create the alert controller
        let alertController = UIAlertController(title: "", message: "Thanks for downloading Calculator 3D", preferredStyle: .actionSheet)
        
        //Create and add the GitHub link
        let gitImage = UIImage(named: "githubsrc")
        let link = "https://github.com/FotiosTragopoulos/Calculator3D"
        let gitLink = UIAlertAction(title: "GitHub Project", style: .default) { action -> Void in
            UIApplication.shared.openURL(NSURL(string: link)! as URL)
            print("something here... button click or action logging")
        }
        gitLink.setValue(gitImage, forKey: "image")
        
        //Create and add the Portfolio link
        let portImage = UIImage(named: "web")
        let linkPortfolio = "http://fotiostragopoulos.myds.me"
        let portLink = UIAlertAction(title: "Portfolio Website", style: .default) { action -> Void in
            UIApplication.shared.openURL(NSURL(string: linkPortfolio)! as URL)
            print("something here... button click or action logging")
        }
        portLink.setValue(portImage, forKey: "image")
        
        
        //Create and add OK action
        let yesAction = UIAlertAction(title: "OK", style: .cancel) { action -> Void in
        }
        
        alertController.addAction(portLink)
        alertController.addAction(gitLink)
        alertController.addAction(yesAction)
        
        //Present the AlertController
        self.present(alertController, animated: true, completion: nil)
    }
    
    //iPad Linking Button
    @IBAction func gitPadAction(_ sender: Any) {
        if let url = NSURL(string: "https://github.com/FotiosTragopoulos/Calculator3D") {
            UIApplication.shared.openURL(url as URL)
        }
    }
    
    @IBAction func portfolioPadAction(_ sender: Any) {
        if let url = NSURL(string: "http://fotiostragopoulos.myds.me") {
            UIApplication.shared.openURL(url as URL)
        }
    }

    
    
}

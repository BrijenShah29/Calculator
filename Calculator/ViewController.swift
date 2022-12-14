//
//  ViewController.swift
//  Calculator - This current program helps end-user to make calculation with some basic functionalities.
//Program name : MAPD 714 iOS Development
//  Created by Brijen Shah on 2022-09-25.
//Studen Name : Brijen Jayeshbhai Shah
// Student Id : 301271637
//Student Name : Ajay Shrivastav
//Student id : 301284668

import UIKit

class ViewController: UIViewController
{
    var first = ""
    var second = ""
    var function = ""
    var result = 0.0
    var workings = ""
    var userinput = ""
    @IBOutlet weak var calcWorkingDisplay: UILabel!
    @IBOutlet weak var calResultDisplay: UILabel!
   
    
    @IBOutlet weak var resultView: UIView!
    
    
    @IBOutlet weak var workingView: UIView!
    @IBOutlet weak var stackview: UIStackView!
    // Button Connections
    
    @IBOutlet weak var moduloButton: UIButton!
    @IBOutlet weak var acbutton: UIButton!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var plusMinusButton: UIButton!
    
    @IBOutlet weak var sevenButton: UIButton!
    
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    
    @IBOutlet weak var multiplyButton: UIButton!
    
    @IBOutlet weak var fourButton: UIButton!
    
    @IBOutlet weak var fiveButton: UIButton!
    
    @IBOutlet weak var sixButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var oneButton: UIButton!
    
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    
    @IBOutlet weak var totalButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var pointButton: UIButton!
    
    
  
    
    //hello
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // double tap Gesture
        let doubletap = UITapGestureRecognizer(target: self, action: #selector(didDoubleTap(_:)))
            doubletap.numberOfTapsRequired = 2
            totalButton.addGestureRecognizer(doubletap)
                                               
   
        // Do any additional setup after loading the view.
        calcWorkingDisplay.layer.cornerRadius = 20
       // calculatorWorking.layer.borderWidth = 2
        calResultDisplay.layer.cornerRadius = 20
       // calculatorResult.layer.borderWidth = 2
       // calculatorResult.layer.borderColor = UIColor.white.cgColor
       // calculatorWorking.layer.borderColor = UIColor.white.cgColor
        stackview.layer.borderWidth = 10
        stackview.layer.cornerRadius = 20
        stackview.layer.borderColor = UIColor.white.cgColor
        acbutton.layer.borderWidth = 10
        acbutton.layer.cornerRadius = 20
        acbutton.layer.borderColor = UIColor.white.cgColor
        backButton.layer.borderWidth = 10
        backButton.layer.cornerRadius = 20
        backButton.layer.borderColor = UIColor.white.cgColor
        
        moduloButton.layer.borderWidth = 10
        moduloButton.layer.cornerRadius = 20
        moduloButton.layer.borderColor = UIColor.white.cgColor
        plusMinusButton.layer.borderWidth = 10
        plusMinusButton.layer.cornerRadius = 20
        plusMinusButton.layer.borderColor = UIColor.white.cgColor
        divideButton.layer.borderWidth = 10
        divideButton.layer.cornerRadius = 20
        divideButton.layer.borderColor = UIColor.white.cgColor
        sevenButton.layer.borderWidth = 10
        sevenButton.layer.cornerRadius = 20
        sevenButton.layer.borderColor = UIColor.white.cgColor
        eightButton.layer.borderWidth = 10
        eightButton.layer.cornerRadius = 20
        eightButton.layer.borderColor = UIColor.white.cgColor
        nineButton.layer.borderWidth = 10
        nineButton.layer.cornerRadius = 20
        nineButton.layer.borderColor = UIColor.white.cgColor
        multiplyButton.layer.borderWidth = 10
       multiplyButton.layer.cornerRadius = 20
        multiplyButton.layer.borderColor = UIColor.white.cgColor
        fourButton.layer.borderWidth = 10
       fourButton.layer.cornerRadius = 20
        fourButton.layer.borderColor = UIColor.white.cgColor
        fiveButton.layer.borderWidth = 10
       fiveButton.layer.cornerRadius = 20
        fiveButton.layer.borderColor = UIColor.white.cgColor
        sixButton.layer.borderWidth = 10
        sixButton.layer.cornerRadius = 20
        sixButton.layer.borderColor = UIColor.white.cgColor
        minusButton.layer.borderWidth = 10
        minusButton.layer.cornerRadius = 20
         minusButton.layer.borderColor = UIColor.white.cgColor
        oneButton.layer.borderWidth = 10
       oneButton.layer.cornerRadius = 20
        oneButton.layer.borderColor = UIColor.white.cgColor
        twoButton.layer.borderWidth = 10
        twoButton.layer.cornerRadius = 20
        twoButton.layer.borderColor = UIColor.white.cgColor
        threeButton.layer.borderWidth = 10
        threeButton.layer.cornerRadius = 20
        threeButton.layer.borderColor = UIColor.white.cgColor
        plusButton.layer.cornerRadius = 20
        plusButton.layer.borderWidth = 10
        plusButton.layer.borderColor = UIColor.white.cgColor
        totalButton.layer.borderWidth = 10
       totalButton.layer.cornerRadius = 20
        totalButton.layer.borderColor = UIColor.white.cgColor
        pointButton.layer.borderWidth = 10
       pointButton.layer.cornerRadius = 20
        pointButton.layer.borderColor = UIColor.white.cgColor
        zeroButton.layer.borderWidth = 10
        zeroButton.layer.cornerRadius = 20
        zeroButton.layer.borderColor = UIColor.white.cgColor
        
        
        
        
        clearAll()
        
    }
    // implementing double tap gesture
    @objc private func didDoubleTap(_ gesture: UITapGestureRecognizer){
        calcWorkingDisplay.text=calResultDisplay.text
        workings = calcWorkingDisplay.text ?? " "
        calResultDisplay.text=" "
        
    }
    // setting up clear all function
    func clearAll()
    {
        first = ""
        second = ""
        userinput = ""
        function = ""
        result = 0.0
        calcWorkingDisplay.text = " "
        workings = ""
        calResultDisplay.text="0"
    }
    
    // setting up working panel text
    func workingPanel(value : String)
    {
        workings = workings + value;
        calcWorkingDisplay.text = workings;
        //first = workings
        
    }
    
    func calculation()
    {
        second = userinput
        //first = String(result)
        var firstInput = 0.0
        var secondInput = 0.0
        //firstInput = Double(first)!
       // secondInput = Double(second)!
        if(function == "+")
        {
            firstInput = Double(first)!
            secondInput = Double(second)!
            
            result = firstInput + secondInput
           calResultDisplay.text = String(result)
            userinput = String(result)
            //workings = String(result)
            //first = String(result)
            
        }
        else if(function == "-")
        {
            firstInput = Double(first)!
            secondInput = Double(second)!
            
            result = firstInput - secondInput
           calResultDisplay.text = String(result)
            userinput = String(result)
            //workings = String(result)
            //first = String(result)
        }
        else if (function == "*")
        {
            firstInput = Double(first)!
            secondInput = Double(second)!
            
            result = firstInput * secondInput
            calResultDisplay.text = String(result)
            userinput = String(result)
            //workings = String(result)
            //first = String(result)
        }
        else if (function == "/")
        {
            firstInput = Double(first)!
            secondInput = Double(second)!
            
            result = firstInput / secondInput
            calResultDisplay.text = String(result)
            userinput = String(result)
            //workings = String(result)
            //first = String(result)
        }
        
       else if(function == "%")
        {
           firstInput = Double(first)!
          // secondInput = Double(second)!
           
           //second = String(0.0)
           result = firstInput * 0.01
          calResultDisplay.text = String(result)
           userinput = String(result)
       }
        
        else
        {
            calResultDisplay.text = "0"
        }
        
    }
  
        
  
    
    @IBAction func calcAC(_ sender: Any) {
        
        clearAll()
        
        
    }
    
    @IBAction func calcBack(_ sender: Any) {
        
        if(!workings.isEmpty)               // adding back button functionality
        {
            workings.removeLast()
            userinput.removeLast()
            calcWorkingDisplay.text = workings
        }
        
        
        
    }
    
    @IBAction func plusMinus(_ sender: Any) {
      /*
        if(!workings.starts(with:"-"))          // setting up +/- button
        {
            let minusValue = "-"+workings
            workings = minusValue
            calculatorWorking.text = minusValue
            
            
        }
        else{
            //workings = "-"+workings
            workings.removeFirst()
            calculatorWorking.text=workings
            
          //  calculatorWorking.text = workings
            
        }
            
       */
       
       
       
    //numberString.insert("-", at: numberString.startIndex)
       // let minusValue = "-"+workings
       // workings = minusValue
       // calculatorWorking.text = minusValue
       // workings = minusValue
        
       /* if(!calculatorWorking.text[0]=="-")
        {
            calculatorWorking.text=workings
        }
        */
        
    }
    
    @IBAction func calcModule(_ sender: Any) {
        
        function = "%"
        first = userinput
        userinput = ""
        workingPanel(value : "%")
        
        
    }
    
    @IBAction func calcDevision(_ sender: Any)
    {
        calculation()
        function = "/"
        first = userinput
        userinput = ""
        workingPanel(value : "/")
        
        
    }
    
    @IBAction func calcMultiply(_ sender: Any)
    {
        calculation()
        function = "*"
        first = userinput
        userinput = ""
        workingPanel(value : "*")
        
    }
    
    @IBAction func calcMinus(_ sender: Any)
    {
        function = "-"
        first = userinput
        userinput = ""
        workingPanel(value : "-")
        
    }
    
    
    @IBAction func calcPlus(_ sender: Any)
    {
        calculation()
        function = "+"
        first = userinput
        userinput = ""
        workingPanel(value : "+");
        
        
    }
    
    @IBAction func calcTotal(_ sender: Any) {
        
        calculation()
        
        /*
         second = userinput
         //first = String(result)
         var firstInput = 0.0
         var secondInput = 0.0
         //firstInput = Double(first)!
         // secondInput = Double(second)!
         if(function == "+")
         {
         firstInput = Double(first)!
         secondInput = Double(second)!
         
         result = firstInput + secondInput
         calResultDisplay.text = String(result)
         userinput = String(result)
         //workings = String(result)
         //first = String(result)
         
         }
         else if(function == "-")
         {
         firstInput = Double(first)!
         secondInput = Double(second)!
         
         result = firstInput - secondInput
         calResultDisplay.text = String(result)
         userinput = String(result)
         //workings = String(result)
         //first = String(result)
         }
         else if (function == "*")
         {
         firstInput = Double(first)!
         secondInput = Double(second)!
         
         result = firstInput * secondInput
         calResultDisplay.text = String(result)
         userinput = String(result)
         //workings = String(result)
         //first = String(result)
         }
         else if (function == "/")
         {
         firstInput = Double(first)!
         secondInput = Double(second)!
         
         result = firstInput / secondInput
         calResultDisplay.text = String(result)
         userinput = String(result)
         //workings = String(result)
         //first = String(result)
         }
         
         else if(function == "%")
         {
         firstInput = Double(first)!
         // secondInput = Double(second)!
         
         //second = String(0.0)
         result = firstInput * 0.01
         calResultDisplay.text = String(result)
         userinput = String(result)
         }
         
         else
         {
         calResultDisplay.text = "error"
         }
         
         */
    }
  
    @IBAction func calcPoint(_ sender: Any) {
        
        calcWorkingDisplay.text = ""
        userinput += "."
        calResultDisplay.text! = userinput
        
        workingPanel(value : ".")
        
        
    }
    
    @IBAction func calcZero(_ sender: Any) {
        userinput += "0"
        calResultDisplay.text!=userinput
        workingPanel(value : "0")
        
        
    }
    
    
    @IBAction func calcOne(_ sender: Any)
    {
        calcWorkingDisplay.text = ""
        userinput += "1"
        calResultDisplay.text!=userinput
        workingPanel(value : "1")
        
    }
    @IBAction func calcTwo(_ sender: Any)
    {
        
        calcWorkingDisplay.text = ""
        userinput += "2"
        calResultDisplay.text!=userinput
        workingPanel(value : "2")
        
    }
    
    @IBAction func calcThree(_ sender: Any)
    {
       
        calcWorkingDisplay.text = ""
        userinput += "3"
        calResultDisplay.text!=userinput
        workingPanel(value : "3")
    }
    
    
    @IBAction func calcFour(_ sender: Any)
    {
       
        calcWorkingDisplay.text = ""
        userinput += "4"
        calResultDisplay.text!=userinput
        workingPanel(value : "4")
    }
    
    @IBAction func calcFive(_ sender: Any)
    {
       
        calcWorkingDisplay.text = ""
        userinput += "5"
        calResultDisplay.text!=userinput
        workingPanel(value : "5")
        
    }
    
    @IBAction func calcSix(_ sender: Any)
    {
        
        calcWorkingDisplay.text = ""
        userinput += "6"
        calResultDisplay.text!=userinput
        workingPanel(value : "6")
    }
    
    @IBAction func calcSeven(_ sender: Any)
    {
       
        calcWorkingDisplay.text = ""
        userinput += "7"
        calResultDisplay.text!=userinput
        workingPanel(value : "7")
    }
    
    @IBAction func calcEight(_ sender: Any) {
        
        calcWorkingDisplay.text = ""
        userinput += "8"
        calResultDisplay.text!=userinput
        workingPanel(value : "8")
        
    }
    
   
    @IBAction func calcNine(_ sender: Any) {
        
        calcWorkingDisplay.text = ""
        userinput += "9"
        //calcWorkingDisplay.text! = userinput
        calResultDisplay.text!=userinput
        workingPanel(value : "9")
    }
    
   
}

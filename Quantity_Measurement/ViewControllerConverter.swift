//
//  ViewControllerConverter.swift
//  Quantity_Measurement
//
//  Created by Macbook on 30/07/22.
//

import UIKit

class ViewControllerConverter: UIViewController {
    
    @IBOutlet weak var fromSegment: UISegmentedControl!
    
    @IBOutlet weak var toSegment: UISegmentedControl!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    var fromSegmentIndexOne = String()
    var fromSegmentIndexTwo = String()
    var toSegmentIndexOne = String()
    var toSegmentIndexTwo = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        fromSegment.setTitle(fromSegmentIndexOne, forSegmentAt: 0)
        fromSegment.setTitle(fromSegmentIndexTwo, forSegmentAt: 1)
        toSegment.setTitle(toSegmentIndexOne, forSegmentAt: 0)
        toSegment.setTitle(toSegmentIndexTwo, forSegmentAt: 1)
        
        // Do any additional setup after loading the view.
    }
    @IBAction func convertButton(_ sender: Any) {
        if inputTextField.text == ""{
            outputLabel.text = "Enter Value "
        }
        else{
            if let value =  Double(inputTextField.text!){
                
                let answer = performCalculation(From: fromSegment.titleForSegment(at: fromSegment.selectedSegmentIndex)!, To: toSegment.titleForSegment(at: toSegment.selectedSegmentIndex)!, textField: value)
                
                outputLabel.text = answer
            }
            else{
                outputLabel.text = "enter proper value"
            }
        }
        
    }
    
}
func performCalculation(From f:String , To t:String , textField num:Double) -> String {
    print(" hello")
    
    if f == t {
        return "Dont Do :"
    }
    
    if(f == t){
        print("your from and to are same ")
    }
    else if f == "Meter" && t == "Centimeter"{
        let answer = "\(round(num * 100)) \(t)"
        return answer
    }
    else if f == "Centimeter" && t == "Meter"{
        let answer = "\(round(num * 0.01)) \(t)"
        return answer
    }
    
    else if f == "Kilogram" && t == "Gram"{
        let answer = "\(round(num * 1000)) \(t)"
        return answer
    }
    else if f == "Gram" && t == "Kilogram"{
        let answer = "\(round(num * 0.001)) \(t)"
        return answer
    }
    
    else if f == "Celsius" && t == "Fahrenheit"{
        let far = round(((num * (9/5)) + 32)*100)/100
        let answer = "\(far) \(t)"
        return answer
    }
    
    else if f == "Fahrenheit" && t == "Celsius"{
        let cel = round(((num - 32) * (5/9))*100)/100
        let answer = "\(cel) \(t)"
        return answer
    }
    else{
        return "not able to find"
    }
    return "alpha"
}


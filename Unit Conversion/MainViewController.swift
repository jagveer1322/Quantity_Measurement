//
//  MainViewController.swift
//  Unit Conversion
//
//  Created by Macbook on 28/07/22.
//

import UIKit

class MainViewController: ViewController {
    
    @IBOutlet var FromSegment: UISegmentedControl!
        @IBOutlet var ToSegment: UISegmentedControl!
        @IBOutlet var MainLabel: UILabel!
        @IBOutlet var TextField: UITextField!
        
        var FromSegmentIndexOne = String()
        var FromSegmentIndexTwo = String()
        
        var ToSegmentIndexOne = String()
        var ToSegmentIndexTwo = String()

        override func viewDidLoad() {
            super.viewDidLoad()
            
            FromSegment.setTitle(FromSegmentIndexOne, forSegmentAt: 0)
            FromSegment.setTitle(FromSegmentIndexTwo, forSegmentAt: 1)
            
            ToSegment.setTitle(ToSegmentIndexOne, forSegmentAt: 0)
            ToSegment.setTitle(ToSegmentIndexTwo, forSegmentAt: 1)
            
           
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
           
        }
        
        
        @IBAction func Calculate(sender: UIButton) {
            
            
            if TextField.text == "" {
                MainLabel.text = "Atleast enter a value"
            }
            
            else {
                
                if let value = Double(TextField.text!){
                    
                    print("\(value)")
                    let answer =  performCalculation(From: FromSegment.titleForSegment(at: FromSegment.selectedSegmentIndex)!, To: ToSegment.titleForSegment(at: ToSegment.selectedSegmentIndex)!, TextField: value)
                    
                    
                    MainLabel.text = answer
                    
                }
                
                else {
                    
                    MainLabel.text = "Enter Valid Number"
                    
                }
                
            }
            
        }
        
    }

   

    func performCalculation(From f:String , To t:String , TextField num:Double) -> String {
        
        if f == t {
            return "Dont Do :"
        }
        
        else if f == "Metre" && t == "Centimeter" {
            
            let answer = "\(round(num * 100)) \(t)"
            return answer
        }
            
        else if f == "Centimeter" && t == "Metre" {
            
            let answer = "\(round(num / 100)) \(t)"
            return answer
            
        }
            
        else if f == "Kilogram" && t == "Grams" {
            
            let answer = "\(round(num * 1000))\(t)"
            return answer
            
        }
            
        else if f == "Grams" && t == "Kilograms" {
            
            let answer = "\(round(num / 1000)) \(t)"
            return answer
            
        }
            
        else if f == "Celsius" && t == "Fahrenheit" {
            
            let fahrenheit = round(((num * (9/5)) + 32)*100)/100
            let answer = "\(fahrenheit) \(t)"
            return answer
            
        }
            
        else if f == "Fahrenheit" && t == "Celsius" {
            
            let celsius = round(((num - 32)*(5/9))*100)/100
            let answer = "\(celsius) \(t)"
            return answer
            
        }
        
        else {
            
            return " Bye"
        }
    return "alpha"
}

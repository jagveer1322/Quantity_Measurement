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

        
    @IBAction func Calculate(_ sender: Any) {
        
        if TextField.text == ""{
                    MainLabel.text = "Enter Value "
                }
                else{
                    if let value =  Double(TextField.text!){
                        
                        let answer = performCalculation(From: FromSegment.titleForSegment(at: FromSegment.selectedSegmentIndex)!, To: ToSegment.titleForSegment(at: ToSegment.selectedSegmentIndex)!, TextField: value)
                        
                        MainLabel.text = answer
                    }
                    else{
                        MainLabel.text = "enter proper value"
            }
        }
        
    }
    
}
            
        

    func performCalculation(From f:String , To t:String , TextField num:Double) -> String {
        print(" hello")
        
        if f == t {
            return "Dont Do :"
        }
        
        if(f == t){
                print("your from and to are same ")
            }
            else if f == "Meter" && t == "Centimeter"{
                let answer = "\(round(num * 79.64)) \(t)"
                return answer
            }
            else if f == "Centimeter" && t == "Meter"{
                let answer = "\(round(num * 0.013)) \(t)"
                return answer
            }
            
            else if f == "Kilogram" && t == "Gram"{
                let answer = "\(round(num * 0.001)) \(t)"
                return answer
            }
        else if f == "Gram" && t == "Kilogram"{
                let answer = "\(round(num * 1000)) \(t)"
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
                


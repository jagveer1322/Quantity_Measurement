//
//  ViewController.swift
//  Unit Conversion
//
//  Created by Macbook on 27/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TypeSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        let MainDestinationViewController : MainViewController = segue.destination as! MainViewController
        
        let segment = TypeSegment.selectedSegmentIndex
        
        switch segment {
            
        case 0 :
            
            MainDestinationViewController.FromSegmentIndexOne = "Meter"
            MainDestinationViewController.FromSegmentIndexTwo = "Centimeter"
            MainDestinationViewController.ToSegmentIndexOne = "Centimeter"
            MainDestinationViewController.ToSegmentIndexTwo = "Meter"
            
        case 1 :
            MainDestinationViewController.FromSegmentIndexOne = "Kilogram"
            MainDestinationViewController.FromSegmentIndexTwo = "Gram"
            MainDestinationViewController.ToSegmentIndexOne = "Gram"
            MainDestinationViewController.ToSegmentIndexTwo = "Kilogram"
            
            
        case 2 :
            
            MainDestinationViewController.FromSegmentIndexOne = "Celsius"
            MainDestinationViewController.FromSegmentIndexTwo = "Fahrenheit"
            MainDestinationViewController.ToSegmentIndexOne = "Fahrenheit"
            MainDestinationViewController.ToSegmentIndexTwo = "Celsius"
            
        default:
            print ("Error @ preparing segue")
            
            
        }
    }


}


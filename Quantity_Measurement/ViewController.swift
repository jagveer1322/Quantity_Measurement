//
//  ViewController.swift
//  Quantity_Measurement
//
//  Created by Macbook on 28/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var typeSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
            let MainDestinationViewController : ViewControllerConverter = segue.destination as! ViewControllerConverter
            
            let segment = typeSegment.selectedSegmentIndex
            
            switch segment {
                
            case 0 :
                
                MainDestinationViewController.fromSegmentIndexOne = "Meter"
                MainDestinationViewController.fromSegmentIndexTwo = "Centimeter"
                MainDestinationViewController.toSegmentIndexOne = "Centimeter"
                MainDestinationViewController.toSegmentIndexTwo = "Meter"
                
            case 1 :
                MainDestinationViewController.fromSegmentIndexOne = "Kilogram"
                MainDestinationViewController.fromSegmentIndexTwo = "Gram"
                MainDestinationViewController.toSegmentIndexOne = "Gram"
                MainDestinationViewController.toSegmentIndexTwo = "Kilogram"
                
                
            case 2 :
                
                MainDestinationViewController.fromSegmentIndexOne = "Celsius"
                MainDestinationViewController.fromSegmentIndexTwo = "Fahrenheit"
                MainDestinationViewController.toSegmentIndexOne = "Fahrenheit"
                MainDestinationViewController.toSegmentIndexTwo = "Celsius"
                
            default:
                print ("Error @ preparing segue")
                
                
            }
        }

}


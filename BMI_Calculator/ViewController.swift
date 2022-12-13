//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by Chetan Patel on 2022-12-13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Name: UITextField!
    
    @IBOutlet weak var Height: UITextField!
    
    @IBOutlet weak var Weight: UITextField!
    
    @IBOutlet weak var ScoreLabel: UITextField!
    
    @IBOutlet weak var Message: UITextField!
    
    @IBOutlet weak var ToggleValue: UISegmentedControl!
    
    @IBAction func Calculate(_ sender: Any) {
        self.view.endEditing(true)

        let height = (Height.text! as NSString).doubleValue
        let weight = (Weight.text! as NSString).doubleValue
        
        var BMI = 0.0
        
        switch ToggleValue.selectedSegmentIndex {
          case 0:
          BMI = 703 * weight/(height*height);
          ScoreLabel.text = String(format: "%.2f", BMI)


          case 1:
          BMI =  weight / (height*height);
              ScoreLabel.text = String(format: "%.2f", BMI)

          default:
              break
        }
        
        if BMI < 16 {
            Message.text = "Severe Thinness"
        } else if (BMI >= 16 && BMI < 17) {
            Message.text = "Moderate Thinness"
        } else if (BMI >= 17 && BMI < 18.5) {
            Message.text = "Mild Thinness"
        } else if (BMI >= 18.5 && BMI < 25) {
            Message.text = "Normal"
        } else if (BMI >= 25 && BMI < 30) {
            Message.text = "Overweight"
        } else if (BMI >= 30 && BMI < 35) {
            Message.text = "Obese Class I"
        } else if (BMI >= 35 && BMI < 40) {
            Message.text = "Obese Class II"
        } else if (BMI > 40){
            Message.text = "Obese Class III"
        } else {
            Message.text = "Undefined"
        }
        
    }
    
    @IBAction func Reset(_ sender: Any) {
        Name.text=""
        Height.text=""
        Weight.text=""
        ScoreLabel.text=""
        Message.text=""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


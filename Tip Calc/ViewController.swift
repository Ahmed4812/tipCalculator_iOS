//
//  ViewController.swift
//  Tip Calc
//
//  Created by Ali Ahmed Khan on 10/17/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var customPercent: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0 //read bill input
        let customVal=Double(customPercent.text!) ?? 0 //read custom input
        let tipPercentages = [0.15,0.18,0.2,customVal / 100] //types of percents
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        //calculate tip from depending on the Segment Control
        
        let total = bill + tip //calculate total
        tipAmountLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
        
    }
    

}


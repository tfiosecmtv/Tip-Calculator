//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Aidana Imangozhina on 8/11/20.
//  Copyright © 2020 Aidana Imangozhina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet var tipPerc: UISegmentedControl!
    @IBOutlet var billField: UITextField!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var TipLabel: UILabel!
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amout
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        
        let tipPercentages = [0.1, 0.18, 0.2]
        
        let tip = bill*tipPercentages[tipPerc.selectedSegmentIndex]
        let total = bill + tip
        // Update the tip
        
        TipLabel.text = String(format: "$%f2", tip)
        totalLabel.text = String(format: "$%f2", total)
    }
    
    @IBAction func tapgesture(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    
}


//
//  ViewController.swift
//  CodePathPrework
//
//  Created by Susanth Kakarla on 8/25/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipSliderAmount: UILabel!
    @IBOutlet weak var SplitBill: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func SplitBill(_ sender: Any) {
    }
    
    @IBAction func calulateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercent = Double(tipSlider.value)
        let tip = bill * tipPercent
        let total = bill + tip
        
      
        tipSliderAmount.text = String(format: "%.0f%%",tipSlider.value * 100)
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    

}


//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Diana Andersen on 1/23/19.
//  Copyright © 2019 Diana Andersen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tip = bill * 0.1
        let total = bill + tip
        
        // Update the tip and total labels
      //  tipLabel.text = String()
        totalLabel.text = "$\(total)"
    }
}


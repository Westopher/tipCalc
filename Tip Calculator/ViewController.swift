//
//  ViewController.swift
//  Tip Calculator
//
//  Created by West Kraemer on 6/14/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billPrice: UITextField!
    @IBOutlet weak var tipPercent: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func calculate(_ sender: UIButton) {
        let price = Double(billPrice.text!)
        let tip = Double(tipPercent.text!)
        let tipTotal = price! * tip!/100.0
        tipLabel.text = "Tip Amount:" + String(format: "$%.2f", tipTotal)
        totalLabel.text = "Total: " + String(format: "$%.2f", price! + tipTotal)
    }
    

}


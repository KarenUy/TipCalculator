// 
//  ViewController.swift
//  TipCalculator
//
//  Created by Karen Angela Uy on 07/11/2017.
//  Copyright © 2017 Karen Angela Uy. All rights reserved.
//

import UIKit

class ViewController: UIViewController { // this is correct upper camel-case for Classes 👍

    @IBOutlet weak var Billfield: UITextField! // properties i.e. constants or variables should be "lower camel-case" billField vs. BillField
    @IBOutlet weak var Tiplabel: UILabel!
    @IBOutlet weak var Totallabel: UILabel!
    @IBOutlet weak var Tipcontrol: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculatetip(_ sender: Any) {
        let Tippercentages = [0.1, 0.2, 0.3] // lower camel-case tipPercentages
        let Bill = Double(Billfield.text!) ?? 0 // bill
        let Tip = Bill * Tippercentages[Tipcontrol.selectedSegmentIndex] //tip
        let Total = Bill + Tip // total
        let tipText = String(format: "$%.2f", Tip)
        let totalText = String(format: "$%.2f", Total)
        setupLabels(tipText: tipText, totalText: totalText)
    }
    
    func setupLabels(tipText: String, totalText: String) {
      // Code to execute when calling function
      Tiplabel.text = tipText
      TotalLabel.text = totalText  
    }
}

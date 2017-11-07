//
//  ViewController.swift
//  TipCalculator
//
//  Created by Karen Angela Uy on 07/11/2017.
//  Copyright © 2017 Karen Angela Uy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Billfield: UITextField!
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
   
        let Tippercentages = [0.1, 0.2, 0.3]
        
        let Bill = Double(Billfield.text!) ?? 0
        let Tip = Bill * Tippercentages[Tipcontrol.selectedSegmentIndex]
        let Total = Bill + Tip
        
        
        Tiplabel.text = String(format: "$%.2f", Tip)
        Totallabel.text = String(format: "$%.2f", Total)
    
    
    }
    
}


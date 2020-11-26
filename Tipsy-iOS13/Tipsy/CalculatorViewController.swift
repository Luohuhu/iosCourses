//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    var bill : Float?
    var tip : Float = 0.1
    var number : Int = 2
    
    @IBOutlet weak var billTextFIle: UITextField!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var splitNumber: UILabel!
    @IBAction func tipSelected(_ sender: UIButton) {
        billTextFIle.endEditing(true)
        let selected:String = sender.currentTitle!
        switch selected {
        case "0%":
            zeroButton.isSelected = true
            tenButton.isSelected = false
            twentyButton.isSelected = false
            tip = 0.0
        case "10%":
            zeroButton.isSelected = false
            tenButton.isSelected = true
            twentyButton.isSelected = false
            tip = 0.1
        case "20%":
            zeroButton.isSelected = false
            tenButton.isSelected = false
            twentyButton.isSelected = true
            tip = 0.2
        default:
            print("error in selecting tip")
        }
        
        
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        bill = Float(billTextFIle.text ?? "0")
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    @IBAction func splitValueChange(_ sender: UIStepper) {
        number = Int(sender.value)
        splitNumber.text = String(number ?? 0)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.data = Data(bill: bill!, tip: tip, number: number)
        }
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


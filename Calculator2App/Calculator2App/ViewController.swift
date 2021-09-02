//
//  ViewController.swift
//  Calculator2App
//
//  Created by Ajay Bandi on 9/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayLabel: UILabel!
    var operand1:Double = -1.1;
    var operand2:Double = -1.1;
    var calcOperator:Character = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Button9(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "9"
        if operand1 == -1.1{
            operand1 = 9
        }else{
            operand2 = 9
        }
    }
    
    @IBAction func Button5(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "5"
        if operand2 == -1.1{
            operand2 = 5
        }else{
            operand1 = 5
        }
    }
    
    @IBAction func ButtonMul(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "*"
        if calcOperator == " "{
            calcOperator = "*"
        }
    }
    
    @IBAction func ButtonEquals(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "="
        if calcOperator == "*"{
            DisplayLabel.text = "\(operand1*operand2)";
        }
    }
}


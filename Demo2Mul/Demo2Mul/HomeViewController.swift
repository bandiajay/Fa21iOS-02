//
//  ViewController.swift
//  Demo2Mul
//
//  Created by Ajay Bandi on 10/19/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var AmountTextFieldOutlet: UITextField!
    
    
    @IBOutlet weak var DiscountRateTextFeild: UITextField!
    
    var priceAfterDiscount = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func CalcButtonClicked(_ sender: UIButton) {
        let amount = Double(AmountTextFieldOutlet.text!)
        print(amount!)
        
        let discountRate = Double(DiscountRateTextFeild.text!)
        print(discountRate!)
        
        priceAfterDiscount = amount! - (amount!*discountRate!/100)
        
        print(priceAfterDiscount)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "ResultSegue"{
            let destination = segue.destination as! ResultViewController
            destination.amountEntered = AmountTextFieldOutlet.text!
            destination.discountEntered = DiscountRateTextFeild.text!
            destination.priceAfterDiscount = String(priceAfterDiscount)
           
    }
}

}

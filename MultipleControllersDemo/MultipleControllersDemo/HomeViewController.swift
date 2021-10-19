//
//  ViewController.swift
//  MultipleControllersDemo
//
//  Created by Ajay Bandi on 10/19/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var AmountOutlet: UITextField!
    
    
    @IBOutlet weak var DiscountRateOutlet: UITextField!
    
    var priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func CalcButtonPressed(_ sender: UIButton) {
        //read the input from the text feilds.
        var amount = Double(AmountOutlet.text!)
        print(amount!)
        
        var discRate = Double(DiscountRateOutlet.text!)
        
        print(discRate!)
        
        priceAfterDiscount = amount! - (amount!*discRate!/100)
        
        print(priceAfterDiscount)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "ResultSegue"{
            let destination = segue.destination as! ResultViewController
            
            destination.amount  = AmountOutlet.text!
            destination.discRate = DiscountRateOutlet.text!
            destination.priceAfterDisc = String(priceAfterDiscount)
        }
        
    }
    
}


//
//  ResultViewController.swift
//  Demo2Mul
//
//  Created by Ajay Bandi on 10/19/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var AmountEnteredOutlet: UILabel!
    
    
    @IBOutlet weak var DiscountEnteredOutlet: UILabel!
    
    
    @IBOutlet weak var PriceAfterDiscountOutlet: UILabel!
    
    var amountEntered = ""
    var discountEntered = ""
    var priceAfterDiscount = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AmountEnteredOutlet.text = AmountEnteredOutlet.text! + amountEntered
        DiscountEnteredOutlet.text = DiscountEnteredOutlet.text!+discountEntered
        PriceAfterDiscountOutlet.text = PriceAfterDiscountOutlet.text!+priceAfterDiscount

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

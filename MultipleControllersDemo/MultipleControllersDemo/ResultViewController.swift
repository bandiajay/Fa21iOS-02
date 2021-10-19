//
//  ResultViewController.swift
//  MultipleControllersDemo
//
//  Created by Ajay Bandi on 10/19/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var EnteredDiscRateOutlet: UILabel!
    
    @IBOutlet weak var EnteredAmountOutlet: UILabel!
    
    @IBOutlet weak var PriceAfterDiscOutlet: UILabel!
    
    var amount = ""
    var discRate = ""
    var priceAfterDisc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EnteredAmountOutlet.text = EnteredAmountOutlet.text! + amount

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

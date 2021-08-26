//
//  ViewController.swift
//  HelloApp
//
//  Created by Ajay Bandi on 8/26/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var InputText: UITextField!
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Submit(_ sender: UIButton) {
        //Read the data from the text feild
        //Assign it to display label
        //DisplayLabel.text = InputText.text
        var ipText = InputText.text!
        DisplayLabel.text = "Hello, \(ipText)!"
    }
}


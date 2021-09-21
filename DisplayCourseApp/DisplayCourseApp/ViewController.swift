//
//  ViewController.swift
//  DisplayCourseApp
//
//  Created by Ajay Bandi on 9/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PrevButton: UIButton!
    @IBOutlet weak var DisplayImage: UIImageView!
    
    @IBOutlet weak var crsNum: UILabel!
    
    
    @IBOutlet weak var crsTitle: UILabel!
    
    
    @IBOutlet weak var crsSem: UILabel!
    
    let courses = [["44555", "Network Security", "fall"],
                   ["44643", "iOS", "spring"],
                   ["44656", "Streaming Data", "summer"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Load the details of one course with image
        //the previous button must be disabled
        PrevButton.isEnabled = false;
    }


    @IBAction func PrevButtonPressed(_ sender: UIButton) {
        //The data should be updated
        //If the user visited all the courses, previous button should be disabled
    }
    
    
    @IBAction func NextButtonPressed(_ sender: UIButton) {
        //previous button is enabled
        //the next course should display
        //If the user reached the last course, next button should be disabled
        
    }
    
}


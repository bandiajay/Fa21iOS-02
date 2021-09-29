//
//  ViewController.swift
//  DisplayCourseApp
//
//  Created by Ajay Bandi on 9/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NextButton: UIButton!
    @IBOutlet weak var PrevButton: UIButton!
    @IBOutlet weak var DisplayImage: UIImageView!
    
    @IBOutlet weak var crsNum: UILabel!
    
    
    @IBOutlet weak var crsTitle: UILabel!
    
    
    @IBOutlet weak var crsSem: UILabel!
    
    var imageNumber = 0;
    
    let courses = [["img01", "44555", "Network Security", "fall"],
                   ["img02", "44643", "iOS", "spring"],
                   ["img03", "44656", "Streaming Data", "summer"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Load the details of one course with image
        updateData(imageNumber)
        //the previous button must be disabled
        PrevButton.isEnabled = false;
    }


    @IBAction func PrevButtonPressed(_ sender: UIButton) {
        //The data should be updated
        imageNumber -= 1
        updateData(imageNumber)
        
        //If the user visited all the courses, previous button should be disabled
        if imageNumber == 0{
            PrevButton.isEnabled = false
            //enable the next button
            NextButton.isEnabled = true
        }
        
        
    }
    
    
    @IBAction func NextButtonPressed(_ sender: UIButton) {
        //previous button is enabled
        PrevButton.isEnabled = true
        //the next course should display
        imageNumber += 1
        updateData(imageNumber)
        
        //If the user reached the last course, next button should be disabled
        if imageNumber == courses.count-1{
            NextButton.isEnabled = false;
        }
        
    }
    
    func updateData(_ imageNum: Int){
        DisplayImage.image = UIImage(named: courses[imageNum][0])
        crsNum.text = courses[imageNum][1]
        crsTitle.text = courses[imageNum][2]
        crsSem.text = courses[imageNum][3]
    }
    
}


//
//  ViewController.swift
//  CoordinatesDemo
//
//  Created by Ajay Bandi on 10/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageViewOutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let minx = ImageViewOutlet.frame.minX
        let miny = ImageViewOutlet.frame.minY
        print(minx, miny)
        
        let midx = ImageViewOutlet.frame.midX
        let midy = ImageViewOutlet.frame.midY
        print(midx, midy)
        
        let maxx = ImageViewOutlet.frame.maxX
        let maxy = ImageViewOutlet.frame.maxY
        print(maxx, maxy)
        
        let w = ImageViewOutlet.frame.width
        let h = ImageViewOutlet.frame.height
        print(h, w)
        
        //change the location of the imageview to the right bottom corner
        ImageViewOutlet.frame.origin.x = 314
        ImageViewOutlet.frame.origin.y = 796
        
        //change the location of the imageview to the center of the screen
        ImageViewOutlet.frame.origin.x = 157
        ImageViewOutlet.frame.origin.y = 398
        
    }

    @IBAction func ButtonPressed(_ sender: UIButton) {
        
        var w = ImageViewOutlet.frame.width
         w = w+100
        var h = ImageViewOutlet.frame.height
        h = h+100
        
        let x = ImageViewOutlet.frame.origin.x-50
        let y = ImageViewOutlet.frame.origin.y-50
        
        let imageFrame = CGRect(x: x, y: y, width: w, height: h)
        
//        ImageViewOutlet.frame = imageFrame
        
//        UIView.animate(withDuration: 1, delay: 3, animations: {
//            self.ImageViewOutlet.frame = imageFrame
//        })
        
        UIView.animate(withDuration: 1, delay: 1, usingSpringWithDamping: 0.9, initialSpringVelocity: 50, animations: {
            self.ImageViewOutlet.frame = imageFrame
            //self.ImageViewOutlet.alpha = 1
        })
        
        
    }
    
}


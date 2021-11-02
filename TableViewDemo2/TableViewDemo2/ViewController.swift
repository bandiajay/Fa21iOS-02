//
//  ViewController.swift
//  TableViewDemo2
//
//  Created by Ajay Bandi on 11/2/21.
//

import UIKit

class Product{
    var productName: String?
    var productCategory: String?
    
    init(prodName: String, prodCategory: String){
        self.productName = prodName
        self.productCategory = prodCategory
    }
    
}//end Product class.


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //it should return a cell
        var cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //assisgn the data to the cell
        cell.textLabel?.text = productsArray[indexPath.row].productName
        
        return cell
        
    }
    

    @IBOutlet weak var TableViewOutlet: UITableView!
    
    //create an array of products
    var productsArray = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //data of the array in rows
        TableViewOutlet.delegate = self
       // Assign the data source to the viewcontroller
        TableViewOutlet.dataSource = self
        
        let p1 = Product(prodName: "MacBookAir", prodCategory: "Laptop")
        productsArray.append(p1)
        
        let p2 = Product(prodName: "iPhone", prodCategory: "cell phone")
        productsArray.append(p2)
        
        let p3 = Product(prodName: "iPad", prodCategory: "Tablet")
        productsArray.append(p3)
        
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "ResultSegue"{
            let destination = segue.destination as! ResultViewController
            
            destination.product = productsArray[(TableViewOutlet.indexPathForSelectedRow?.row)!]
        }
    }

}


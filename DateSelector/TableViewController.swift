//
//  TableViewController.swift
//  DateSelector
//
//  Created by New Account on 10/12/21.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableValue : UITableView!
   

    var tableArray = ["Marmalade",
                      "Ham",
                      "Egg",
                      "Bread",
                      "Burrito",
                      "Hot chocolate",
                      "Bacon",
                      "Donut",
                      "Porridge",
                      "Muffin",
                      "Waffle",
                      "Tomato",
                      "Croissant",
                      "Pancake",
                      "Toast",
                      "Breakfast sandwich",
                      "Yogurt",
                      "Cheese",
                      "Milk",
                      "Sausage",
                      "Orange juice",
                      "Breakfast cereal",
                      "Coffee"]
    
 

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableValue.register(UITableViewCell.self, forCellReuseIdentifier: "dataTableCell")
        tableValue.dataSource = self
    }
    
/*
    @IBAction func goToPrevPage(_sender: Any){
        
    }
  */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataTableCell", for: indexPath)
        cell.textLabel?.text = self.tableArray[indexPath.row]
        return cell
    }
    
}

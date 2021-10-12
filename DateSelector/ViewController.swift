//
//  ViewController.swift
//  DateSelector
//
//  Created by New Account on 10/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var datePicker : UIDatePicker!
    @IBOutlet weak var datePicker2 : UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel : UILabel!
    @IBOutlet weak var goToButton : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func datePickerSelection(_ sender : Any){
        let dateFormatter = DateFormatter()
        let dateFormatter2 = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        
        let date = datePicker.date
        let dispDate = dateFormatter.string(from : date )
        dateLabel.text = dispDate
        
        dateFormatter2.timeStyle = DateFormatter.Style.short
        let dispTime = dateFormatter2.string(from: datePicker2.date)
        timeLabel.text = dispTime
        
        //Experimented and worked
        
     /*   let components = Calendar.current.dateComponents([.hour, .minute, .timeZone], from: date)
       let hour = components.hour!
       let minute = components.minute!
        let timeZone = components.timeZone!
       
        
       
        
        timeLabel.text = "\(hour) : \(minute) : \(time)"
        */
    }
    
    @IBAction func goToTableView(_ sender: Any){
        let controller = storyboard?.instantiateViewController(identifier: "TableNC") as! UINavigationController
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }

}


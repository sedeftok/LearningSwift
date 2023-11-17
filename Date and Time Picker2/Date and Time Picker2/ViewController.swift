//
//  ViewController.swift
//  Date and Time Picker2
//
//  Created by sedef tok on 26.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var datePicker:UIDatePicker?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBOutlet weak var textFieldTarih: UITextField!
    
    
    @IBOutlet weak var textFieldSaat: UITextField!
    
    
    var datePicker:UIDatePicker?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var datePicker = UIDatePicker()
    datePicker?.datePickerMode = .date
    textFieldTarih.inputView = datePicker
    
}


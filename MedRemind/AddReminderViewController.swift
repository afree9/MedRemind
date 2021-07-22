//
//  AddReminderViewController.swift
//  MedRemind
//
//  Created by  Scholar on 7/20/21.
//

import UIKit

class AddReminderViewController: UIViewController {
    
    @IBOutlet weak var bodyField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    public var completion : ((String, String, Date) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func didTapSaveButton() {
        if let bodyText = bodyField.text, !bodyText.isEmpty{
        let targetDate = datePicker.date
            
        }
    }
    

}

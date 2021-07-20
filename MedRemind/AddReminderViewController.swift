//
//  AddReminderViewController.swift
//  MedRemind
//
//  Created by  Scholar on 7/20/21.
//

import UIKit

class AddReminderViewController: UIViewController {
    
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var bodyField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    public var completion : ((String, String, Date) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func didTapSaveButton() {
        if let titleText = titleField.text, !titleText.isEmpty,
           let bodyText = titleField.text, !titleText.isEmpty{
        let targetDate = datePicker.date
            
        }
    }
    

}

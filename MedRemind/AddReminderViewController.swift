//
//  AddReminderViewController.swift
//  MedRemind
//
//  Created by  Scholar on 7/20/21.
//

import UIKit

class AddReminderViewController: UIViewController {
    

    @IBOutlet weak var datePicker: UIDatePicker!
    
    public var completion : ((String, String, Date) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func didTapSaveButton() {
        let targetDate = datePicker.date
    }
    

}

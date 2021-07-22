//
//  CompleteMedicineViewController.swift
//  MedRemind
//
//  Created by Amanda Freeman on 7/20/21.
//

import UIKit
import CoreData

class CompleteMedicineViewController: UIViewController {
var previousVC = MedicineTableViewController()
    var selectedMedicine : MedicineCD?
    
    @IBOutlet weak var noteTextField: UITextField!
    
    @IBOutlet weak var noteText: UILabel!
    
    @IBAction func saveNote(_ sender: Any) {
        if let note = noteTextField.text{
                noteText.text = note
    }
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var completeSwitch: UISwitch!
    // trying to flip switch and click button to show check mark
    
    @IBAction func completeButton(_ sender: Any) {
       
        

        }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedMedicine?.medicineName
        // Do any additional setup after loading the view.
    }
    
    @IBAction func deleteTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let theMedicine = selectedMedicine {
                context.delete(theMedicine)
                navigationController?.popViewController(animated: true)
            }
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

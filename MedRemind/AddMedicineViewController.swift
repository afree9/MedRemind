//
//  AddMedicineViewController.swift
//  MedRemind
//
//  Created by Amanda Freeman on 7/20/21.
//

import UIKit

class AddMedicineViewController: UIViewController {
var previousVC = MedicineTableViewController ()
    
    @IBOutlet weak var titleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let medicine = Medicine()
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let medicine = MedicineCD(entity : MedicineCD.entity(), insertInto : context)
            

            if let titleText = titleTextField.text {
                medicine.medicineName = titleText
        }
        
            try? context.save()
            
            navigationController?.popViewController(animated: true)
            
        }
//        previousVC.medicines.append(medicine)
//        previousVC.tableView.reloadData()
//        navigationController?.popViewController(animated: true)
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


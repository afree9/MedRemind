//
//  CompleteMedicineViewController.swift
//  MedRemind
//
//  Created by Amanda Freeman on 7/20/21.
//

import UIKit

class CompleteMedicineViewController: UIViewController {
var previousVC = MedicineTableViewController()
    var selectedMedicine = Medicine()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedMedicine.medicineName
        // Do any additional setup after loading the view.
    }
    
    @IBAction func deleteTapped(_ sender: Any) {
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

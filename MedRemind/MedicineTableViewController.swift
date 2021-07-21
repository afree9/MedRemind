//
//  MedicineTableViewController.swift
//  MedRemind
//
//  Created by Amanda Freeman on 7/20/21.
//

import UIKit

class MedicineTableViewController: UITableViewController {
    
    var medicines : [Medicine] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        medicines = createMedicines()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func createMedicines() -> [Medicine]{
        let swift = Medicine()
        swift.medicineName = "Medicine A"
        
        return [swift]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return medicines.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let medicine = medicines [indexPath.row]
        
        // do i need an if or let statement or can this be by itself
            cell.textLabel?.text = medicine.medicineName
        
        return cell
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let addVC = segue.destination as? AddMedicineViewController {
            addVC.previousVC = self
        }
        
        if let completeVC = segue.destination as? CompleteMedicineViewController {
            if let medicine = sender as? Medicine {
                completeVC.selectedMedicine = medicine
                completeVC.previousVC = self
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    override func tableView(_ tableView : UITableView, didSelectRowAt indexPath : IndexPath) {
        let medicine = medicines[indexPath.row]
        
        performSegue(withIdentifier : "moveToDelete", sender: medicine)
    }
}

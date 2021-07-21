import UserNotifications
import UIKit

class AddReminderBetweenViewController: UIViewController{
    var models = [MyReminder]()
    
    @IBOutlet var table: UITableView!
    

    @IBAction func didTapAddReminder(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(identifier: "add")as? AddReminderViewController
        else {
            return
        }
        
        vc.title = "New Reminder"
        vc.navigationItem.largeTitleDisplayMode = .never
        vc.completion = {title, body, date in
            
        }
        navigationController?.pushViewController(vc, animated: true)
        
    }


    @IBAction func didTapTest(_ sender: Any) {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {success, error in
            if success{
                self.scheduledTest()
                
            }
            else if error != nil{
                print("error occurred")
                
            }
        })
    }
    
    func scheduledTest(){
        let content = UNMutableNotificationContent()
        content.title = "Hello World"
        content.sound = .default
        content.body = "My long body yes sir. Fish sticks"
        
        let targetDate = Date().addingTimeInterval(5)
        let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: targetDate), repeats: false)
        
        let request = UNNotificationRequest(identifier: "some_long_id", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: {error in
            if error != nil{
                print("error")
            }
        })
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }
    
    
}
    // MARK: - Table view data source

extension AddReminderBetweenViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
extension AddReminderBetweenViewController : UITableViewDataSource{
    
        func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        
        return cell
    }

}
struct MyReminder{
    let title: String
    let date : Date
    let identifier : String
}

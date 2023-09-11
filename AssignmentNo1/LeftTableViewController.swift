//
//  LeftTableViewController.swift
//  AssignmentNo1
//
//  Created by Mac on 27/07/23.
//

import UIKit

class LeftTableViewController: UITableViewController {
    
    @IBOutlet var StudentDetails: UITableView!
    var Student : [String] = ["Vaibhav","Saurabh", "Prathmesh","Sahil","Yash"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Student.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let LCell = self.StudentDetails.dequeueReusableCell(withIdentifier: "LCell", for: indexPath)
        LCell.textLabel?.text = Student[indexPath.row]
        LCell.backgroundColor = .orange
        return LCell
    }
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return.delete
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        tableView.beginUpdates()
        Student.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
        tableView.endUpdates()
    }
}


    

//
//  SubTableViewController.swift
//  AssignmentNo1
//
//  Created by Mac on 27/07/23.
//

import UIKit

class SubTableViewController: UITableViewController {
    
    @IBOutlet var StudentDetai: UITableView!
    var Student : [String] = ["Vaibhav","Saurabh", "Prathmesh","Sahil","Yash"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Student.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let SCell = self.StudentDetai.dequeueReusableCell(withIdentifier: "SCell", for: indexPath)
        SCell.textLabel?.text = Student[indexPath.row]
        SCell.backgroundColor = .orange
        return SCell
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

    


    

//
//  RsTableViewController.swift
//  AssignmentNo1
//
//  Created by Mac on 27/07/23.
//

import UIKit

class RsTableViewController: UITableViewController {
    
    @IBOutlet var StudenntsDetialsRight: UITableView!
    
    var Student : [String] = ["Vaibhav","Saurabh", "Prathmesh","Sahil","Yash"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Student.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let RsCell = self.StudenntsDetialsRight.dequeueReusableCell(withIdentifier: "RsCell", for: indexPath)
        RsCell.backgroundColor = .orange
        RsCell.textLabel?.text = Student[indexPath.row]
        return RsCell
    }
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return.delete
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        tableView.beginUpdates()
        Student.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath] , with: .fade)
        tableView.endUpdates()
        
    }
    
}
    

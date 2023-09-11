//
//  ViewController.swift
//  AssignmentNo1
//
//  Created by Mac on 27/07/23.
//

import UIKit

class BasicStyle: UIViewController ,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var StudentDetails: UITableView!
    var Student : [String] = ["Vaibhav","Saurabh", "Prathmesh","Sahil","Yash"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Student.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = self.StudentDetails.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? UITableViewCell
        Cell?.textLabel?.text = Student[indexPath.row]
        Cell!.backgroundColor = .orange
        return Cell!
        
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return.delete
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        tableView.beginUpdates()
        Student.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath] , with: .fade)
        tableView.endUpdates()
    }
}




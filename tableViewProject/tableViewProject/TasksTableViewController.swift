//
//  TasksTableViewController.swift
//  tableViewProject
//
//  Created by Amy Roberson on 1/10/17.
//  Copyright © 2017 Amy Roberson. All rights reserved.
//

import Foundation
import UIKit

class TasksTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet weak var tableView: UITableView!
    
    
    var array: [Task] = [Task(title: "Clean Room"), Task(title: "Walk Dog"), Task(title: "Cook dinner"), Task(title: "Do Homework"), Task(title: "exercise")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ sender: UITableView, numberOfRowsInSection: Int) -> Int{
        return array.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let task = array[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let task = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as? MyTableViewCell {
            let myTask = array[indexPath.row]
            task.updateUI(task: myTask)
            return task
        } else {
            return UITableViewCell()
        }
    }
    

    
    
}

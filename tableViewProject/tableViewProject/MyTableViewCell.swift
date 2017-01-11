//
//  MyTableViewCell.swift
//  tableViewProject
//
//  Created by Amy Roberson on 1/10/17.
//  Copyright © 2017 Amy Roberson. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var taskTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func updateUI(task: Task) {
        taskTitleLabel.text = task.title
    }
}

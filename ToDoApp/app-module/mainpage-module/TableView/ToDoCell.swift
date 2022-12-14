//
//  ToDoCell.swift
//  ToDoApp
//
//  Created by Ebubekir Aykut on 9.09.2022.
//

import UIKit

class ToDoCell: UITableViewCell {
    
    
    @IBOutlet weak var toDoLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var subView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        subView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

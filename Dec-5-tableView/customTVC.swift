//
//  customTVC.swift
//  Dec-5-tableView
//
//  Created by Admin on 5/12/22.
//

import UIKit

class customTVC: UITableViewCell {

    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

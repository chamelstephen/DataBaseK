//
//  DataItemsTableViewCell.swift
//  DataBaseofKingdom
//
//  Created by kento on 2015/12/10.
//  Copyright © 2015年 Kento Ohara. All rights reserved.
//

import UIKit

class DataItemsTableViewCell: UITableViewCell {
    
    @IBOutlet var iconView: UIImageView!
    @IBOutlet var numberLab: UILabel!
    @IBOutlet var nameLab: UILabel!
    @IBOutlet var levelLab: UILabel!
    @IBOutlet var hpLab: UILabel!
    @IBOutlet var fireLab: UILabel!
    @IBOutlet var intelLab: UILabel!
    @IBOutlet var defenceLab: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

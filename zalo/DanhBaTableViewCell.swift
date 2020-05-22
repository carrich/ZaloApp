//
//  DanhBaTableViewCell.swift
//  zalo
//
//  Created by Ngoduc on 5/22/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class DanhBaTableViewCell: UITableViewCell {

    @IBOutlet weak var imageName: UIImageView!
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

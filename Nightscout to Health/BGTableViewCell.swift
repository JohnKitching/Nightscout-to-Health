//
//  BGTableViewCell.swift
//  Nightscout to Health
//
//  Created by John Kitching on 18/04/2020.
//  Copyright © 2020 John Kitching. All rights reserved.
//

import UIKit

class BGTableViewCell: UITableViewCell {

    
    @IBOutlet weak var BGTimeLabel: UILabel!
    @IBOutlet weak var BGValueLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

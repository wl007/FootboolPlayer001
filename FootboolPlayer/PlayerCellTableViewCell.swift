//
//  PlayerCellTableViewCell.swift
//  FootboolPlayer
//
//  Created by IOSDevelop on 2018/7/16.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class PlayerCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var saveImage: UIButton!
    
    @IBOutlet weak var couintry: UILabel!
    @IBOutlet weak var Desc: UILabel!
    @IBOutlet weak var PlayerName: UILabel!
    @IBOutlet weak var PlayerCard: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  VideoTableViewCell.swift
//  Youtube-video-list
//
//  Created by TaChyla Murray on 7/13/17.
//  Copyright © 2017 TaChyla Murray. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {
    @IBOutlet weak var videoImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
